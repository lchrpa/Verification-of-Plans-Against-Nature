#include <iostream>
#include <vector>
#include "SAS_problem.hpp"
#include "SAS_plan.hpp"
#include "SAS_parser.hpp"
#include "SAS_relaxed_assignment.hpp"
#include "utility.h"
#include "downward_driver.hh"
#include "verifier.hpp"

#include <ctime>

#include "DTG.hpp"

using namespace std;

int main(int argc, char **argv)
{

    std::clock_t c_start = std::clock();

    SAS_Parser parser;

    if (argc<3) {cout << "Two arguments <domain> <problem> are required" << endl; return -1;}

    //translate
    //fd_translate_with_events("event_","domains/auv/domain-no-destroy.pddl","domains/auv/problem1.pddl");
    fd_translate_with_events("event_",argv[1],argv[2]);

    SAS_Problem prob=parser.parse("output.sas","event_");

    //planning
    DownwardDriver d("--alias \"lama-first\"","log.x");

    d.plan_sas("output.sas","plan.sol");

    //parse plan
    SAS_Plan plan=parser.parse_plan("plan.sol",prob,"event_",true);

    std::clock_t c_planning = std::clock();


    //verify plan (NDTG)
    verifier ver(prob,plan);
    bool verified=ver.verify_NDTG();

    std::clock_t c_end = std::clock();

    if (verified){
        cout << "Plan verified successfully" << endl;
        for(auto it=ver.get_plan().begin();it!=ver.get_plan().end();it++){
            cout << it->get().get_name() << " waitfor (on top of precondition ) - ";
            for (auto atom : it->get().get_waitfor()) cout << prob.get_variables()[atom.first].to_strips_string_atom(atom.second);
            cout << endl;
        }
    } else {
        cout << "Plan verification failed at step " <<ver.get_step() << " because of " <<ver._get_reason() << endl;
    }


    double time_elapsed_ms = 1000.0 * (c_end-c_start) / CLOCKS_PER_SEC;
    double time_elapsed_planning_ms = 1000.0 * (c_planning-c_start) / CLOCKS_PER_SEC;
    double time_elapsed_verification_ms = 1000.0 * (c_end-c_planning) / CLOCKS_PER_SEC;
    std::cout << "CPU time used: " << time_elapsed_ms << " ms" << endl;
    std::cout << "CPU time used (planning): " << time_elapsed_planning_ms << " ms" << endl;
    std::cout << "CPU time used (verification): " << time_elapsed_verification_ms << " ms" << endl;

    //delete all output files
    system("rm output.sas log.x plan.sol");
    return 0;
}
