from collections import namedtuple
import os
import sys

import jinja2

sys.path.insert(1,'/home/lukas/projects/WaitFor/benchmarks/toFOND/fast_downward/translate')

import pddl_parser
import instantiate

Action = namedtuple("Action", ["name", "pre", "add", "delete", "ceff"])
Event = namedtuple("Event", ["name", "pre", "add", "delete", "ceff"])
ConditionalEffect = namedtuple("ConditionalEffect", ["condition", "effects"])

def enabler(action, event):
    return action.add & event.pre

def disabler(action, event):
    return action.delete & event.pre

def sole_enabler(action, event):
    return event.pre <= action.add

def missing_precond(action, event):
    return event.pre - action.add

def atom_to_name(atom):
    if atom.args:
        return "(" + atom.predicate + "_" + "_".join(atom.args) + ")"
    return "(" + atom.predicate + ")"


def transform_action(action):
    add_effects = set(map(lambda x: atom_to_name(x[1]), action.add_effects))
    del_effects = set(map(lambda x: atom_to_name(x[1]), action.del_effects))
    pre = set(map(atom_to_name, action.precondition))

    return Action(action.name.replace(" ", "_"), pre, add_effects, del_effects, [])

output_dir = '../FOND/HomeRobot'

if __name__ == '__main__':
    task = pddl_parser.open(sys.argv[1], sys.argv[2])
    actions = task.actions
    events = task.events

    os.makedirs(output_dir, exist_ok=True)

    action_names = list(map(lambda a: a.name, task.actions))
    event_names = list(map(lambda e: e.name, task.events))

    task.actions = actions + events
    inst = instantiate.explore(task)

    inst_actions = [a for a in inst[2] if a.name.split(' ')[0][1:] in action_names]
    inst_events = [a for a in inst[2] if a.name.split(' ')[0][1:] in event_names]

    task.actions = actions

    inst_atoms = inst[1]

    ground_actions = list(map(transform_action, inst_actions))
    ground_events = list(map(transform_action, inst_events))
    ground_atoms = list(map(atom_to_name, inst_atoms))

    for a in ground_actions:
        a.pre.add('(act-turn)')
        a.delete.add('(act-turn)')
        a.add.add('(ev-turn)')

    init = set([i for i in map(atom_to_name, task.init) if not i.startswith('(=_')])
    goal = task.goal.parts

    for e in ground_events:
        if e.pre <= init:
            init.add(f'(enab-{e.name[1:-1]})')
        else:
            init.add(f'(disab-{e.name[1:-1]})')

    if '(act-turn)' not in init:
        init.add('(act-turn)')
    init = sorted(init)

    for a in ground_actions:
        for e in ground_events:
            if enabler(a, e) and not sole_enabler(a, e):
                #print(a.name, "is an enabler of", e.name, a.add, e.pre)
                a.ceff.append(ConditionalEffect(missing_precond(a,e), [f"(enab-{e.name[1:-1]})", f"(not (disab-{e.name[1:-1]}))"]))
                #print("\t missing preconditions:", missing_precond(a, e))
            if disabler(a, e):
                a.delete.add(f"(enab-{e.name[1:-1]})")
                a.add.add(f"(disab-{e.name[1:-1]})")
                #print(a.name, "is a disabler of", e.name)
            if sole_enabler(a, e):
                a.add.add(f"(enab-{e.name[1:-1]})")
                a.delete.add(f"(disab-{e.name[1:-1]})")
                #print(a.name, "is a sole enabler of", e.name)

    for a in ground_events:
        for e in ground_events:
            if a.name != e.name and enabler(a, e) and not sole_enabler(a, e):
                #print(a.name, "is an enabler of", e.name, a.add, e.pre)
                a.ceff.append(ConditionalEffect(missing_precond(a,e), [f"(enab-{e.name[1:-1]})", f"(not (disab-{e.name[1:-1]}))"]))
                #print("\t missing preconditions:", missing_precond(a, e))
            if disabler(a, e):
                a.delete.add(f"(enab-{e.name[1:-1]})")
                a.add.add(f"(disab-{e.name[1:-1]})")
                #print(a.name, "is a disabler of", e.name)
            if a.name != e.name and sole_enabler(a, e):
                a.add.add(f"(enab-{e.name[1:-1]})")
                a.delete.add(f"(disab-{e.name[1:-1]})")
                #print(a.name, "is a sole enabler of", e.name)

    for a in ground_events:
        a.pre.add(f'(selected-{a.name[1:-1]})')
        a.pre.add(f'(enab-{a.name[1:-1]})')
        a.delete.add(f'(selected-{a.name[1:-1]})')
        a.add.add('(act-turn)')

    noop_events = []
    for e in ground_events:
        pre = {f'(selected-{e.name[1:-1]})', f'(disab-{e.name[1:-1]})'}
        delete = {f'(selected-{e.name[1:-1]})'}
        add = {'(act-turn)'}
        noop_events.append(Action(f'({e.name[1:-1]}-noop)', pre, add, delete, []))

    typed_objects = {}
    for o in task.objects:
        if o.type_name not in typed_objects:
            typed_objects[o.type_name] = []
        typed_objects[o.type_name].append(o.name)

    goal_atoms = list(map(atom_to_name, goal))
    #print(goal_atoms)

    print("="*80)

    template_loader = jinja2.FileSystemLoader(searchpath="./pddl_templates")
    template_env = jinja2.Environment(loader=template_loader)
    problem_template = template_env.get_template('problem.pddl')
    output_text = problem_template.render(problem_name=task.task_name,
                                          domain_name=task.domain_name,
                                          goals=goal_atoms,
                                          inits=init)

    p_path, p_name = os.path.split(sys.argv[2])

    with open(os.path.join(output_dir, f'fond-problem-{p_name}'), 'w') as f_problem:
        f_problem.write(output_text)

    domain_template = template_env.get_template('domain.pddl')
    output_text = domain_template.render(domain_name=task.domain_name,
                                         actions=ground_actions,
                                         events=ground_events,
                                         noop_events=noop_events,
                                         atoms=ground_atoms)

    with open(os.path.join(output_dir, f'fond-domain-{p_name}'), 'w') as f_domain:
        f_domain.write(output_text)
