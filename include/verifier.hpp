#ifndef __VERIFIER__
#define __VERIFIER__

#include <vector>
#include <deque>

#include "SAS_problem.hpp"
#include "SAS_plan.hpp"
#include "DTG.hpp"

class verifier {
    public:
        verifier(SAS_Problem prob, SAS_Plan plan) : _problem(prob), _plan(plan), _NDTG_initialised(false), _NDTG(prob,EVENTS_ONLY){};

        void initialiseNDTG();
        bool verify_NDTG();

        inline int get_step(){return _step;}
        const inline std::string _get_reason(){return _reason;}
        inline const SAS_Plan &get_plan() const {return _plan;}

    private:
        SAS_Problem _problem;
        SAS_Plan _plan;
        int _step; //step in which the verification failed
        std::string _reason;

        bool _NDTG_initialised;
        DTG _NDTG;

        bool verify_NDTG_step(const SAS_State &curr, const SAS_State &prev, SAS_Assignment &waitfor);

};

#endif
