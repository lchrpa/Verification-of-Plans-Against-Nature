#include <iostream>

#include "RPG.hpp"

RPG::RPG(SAS_Relaxed_Assignment &init, std::vector<SAS_Operator> &ops){
    _ops=ops;
    _atom_layer.push_back(init);
    _fixed_point=false;
}

std::vector<bool> RPG::applicableOps()
{
    std::vector<bool> *app_ops;

    if (_op_layer.empty()){
        app_ops=new std::vector<bool>(_ops.size(),false);
    } else {
        app_ops=new std::vector<bool>(_op_layer.back());
    }

    bool change=false;

    for (int i=0;i<_ops.size();i++){
        if ((*app_ops)[i] == false){
            bool appl = _atom_layer.back().satisfied_by(_ops[i].get_preconditions());
            if (appl){
                change=true;
                (*app_ops)[i]=true;
            }
        }
    }

    if (!change) _fixed_point=true;

    return *app_ops;
}

std::vector<std::reference_wrapper<SAS_Operator>> RPG::getLastOpLayer()
{
    std::vector<std::reference_wrapper<SAS_Operator>> return_ops;

    if (_op_layer.empty()) return return_ops;

    std::vector<bool> last_ops=_op_layer.back();

    for (int i=0;i<last_ops.size();i++){
        if (last_ops[i]) return_ops.emplace_back(_ops[i]);
    }

    return return_ops;
}


bool RPG::expandLayer()
{
    if (!_fixed_point){
        std::vector<bool> app_ops = applicableOps();
        if (!_fixed_point){
            _op_layer.push_back(app_ops);
            SAS_Relaxed_Assignment current = _atom_layer.back();
            for (int i=0;i<_ops.size();i++){
                if (app_ops[i]) current.apply(_ops[i].get_minimal_effects());
            }
            _atom_layer.push_back(current);
        }
    }

    return _fixed_point;
}


void RPG::buildRPG()
{
    while (!_fixed_point) expandLayer();
}




//debug
void RPG::debug_print_layers(){

    for (int i=0;i<_op_layer.size();i++){
        std::cout << "Layer: " << (i+1) << ":";
        for (int j=0;j<_ops.size();j++){
            if (_op_layer[i][j]) std::cout << " " << _ops[j].get_name();
        }
        std::cout << std::endl;
    }

}
