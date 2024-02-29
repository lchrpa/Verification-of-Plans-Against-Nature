(define (domain auv)
(:requirements :non-deterministic)

(:predicates 
             (selected-enter-ship-free_s1_l-2-1)
             (enab-enter-ship-free_s1_l-2-1)
             (disab-enter-ship-free_s1_l-2-1)
             (selected-enter-ship-auv_s1_l-2-1_a)
             (enab-enter-ship-auv_s1_l-2-1_a)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (selected-move-ship-free_s1_l-2-1_l-2-2)
             (enab-move-ship-free_s1_l-2-1_l-2-2)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (selected-move-ship-auv_s1_l-2-1_l-2-2_a)
             (enab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (selected-move-ship-free_s1_l-2-2_l-2-3)
             (enab-move-ship-free_s1_l-2-2_l-2-3)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (selected-move-ship-auv_s1_l-2-2_l-2-3_a)
             (enab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (selected-move-ship-free_s1_l-2-3_l-2-4)
             (enab-move-ship-free_s1_l-2-3_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (selected-move-ship-auv_s1_l-2-3_l-2-4_a)
             (enab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (selected-leave-ship_s1_l-2-4)
             (enab-leave-ship_s1_l-2-4)
             (disab-leave-ship_s1_l-2-4)
             
             (free_l-2-3)
             (free_l-4-1)
             (at_s1_l-2-2)
             (free_l-4-4)
             (at_a_l-3-1)
             (at_a_l-4-4)
             (free_l-3-2)
             (gone_s1)
             (at_a_l-1-4)
             (free_l-1-2)
             (free_l-3-1)
             (at_s1_l-2-4)
             (at_s1_l-2-1)
             (free_l-1-4)
             (at_a_l-3-4)
             (at_a_l-2-4)
             (sampled_r2)
             (at_a_l-2-1)
             (free_l-3-4)
             (at_a_l-2-2)
             (at_s1_l-2-3)
             (sampled_r3)
             (at_a_l-1-3)
             (free_l-2-2)
             (at_a_l-2-3)
             (at_a_l-4-1)
             (at_a_l-4-2)
             (at_a_l-3-3)
             (at_a_l-4-3)
             (free_l-1-3)
             (sampled_r4)
             (free_l-4-2)
             (at_a_l-1-2)
             (free_l-2-4)
             (free_l-3-3)
             (free_l-4-3)
             (outside_s1)
             (at_a_l-1-1)
             (free_l-2-1)
             (sampled_r1)
             (operational_a)
             (free_l-1-1)
             (at_a_l-3-2)
             (act-turn)
             (ev-turn)
)



(:action move_a_l-1-1_l-1-2
:parameters ()
:precondition (and 
                    (free_l-1-2)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-1)
              )
:effect (and 
             (ev-turn)
             (free_l-1-1)
             (at_a_l-1-2)
             (not (free_l-1-2))
             (not (act-turn))
             (not (at_a_l-1-1)))
)

(:action move_a_l-1-1_l-2-1
:parameters ()
:precondition (and 
                    (free_l-2-1)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-1)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (at_a_l-2-1)
             (free_l-1-1)
             (ev-turn)
             (disab-enter-ship-free_s1_l-2-1)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (free_l-2-1))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (act-turn))
             (not (enab-enter-ship-free_s1_l-2-1))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (at_a_l-1-1))
             (when (and (outside_s1))
                   (and (enab-enter-ship-auv_s1_l-2-1_a) (not (disab-enter-ship-auv_s1_l-2-1_a))))
             )
)

(:action move_a_l-1-2_l-1-3
:parameters ()
:precondition (and 
                    (free_l-1-3)
                    (at_a_l-1-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (free_l-1-2)
             (ev-turn)
             (at_a_l-1-3)
             (not (free_l-1-3))
             (not (at_a_l-1-2))
             (not (act-turn)))
)

(:action move_a_l-1-2_l-2-2
:parameters ()
:precondition (and 
                    (free_l-2-2)
                    (at_a_l-1-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (free_l-1-2)
             (at_a_l-2-2)
             (ev-turn)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (free_l-2-2))
             (not (at_a_l-1-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (free_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action sample_a_r1_l-1-2
:parameters ()
:precondition (and 
                    (at_a_l-1-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (sampled_r1)
             (not (act-turn)))
)

(:action move_a_l-1-2_l-1-1
:parameters ()
:precondition (and 
                    (free_l-1-1)
                    (at_a_l-1-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (free_l-1-2)
             (ev-turn)
             (at_a_l-1-1)
             (not (free_l-1-1))
             (not (at_a_l-1-2))
             (not (act-turn)))
)

(:action move_a_l-2-1_l-2-2
:parameters ()
:precondition (and 
                    (at_a_l-2-1)
                    (act-turn)
                    (operational_a)
                    (free_l-2-2)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (free_l-2-1)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (at_a_l-2-2)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (at_a_l-2-1))
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (free_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-enter-ship-auv_s1_l-2-1_a))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (outside_s1))
                   (and (enab-enter-ship-free_s1_l-2-1) (not (disab-enter-ship-free_s1_l-2-1))))
             
             (when (and (at_s1_l-2-1) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_s1_l-2-1) (free_l-2-2) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action move_a_l-2-1_l-3-1
:parameters ()
:precondition (and 
                    (at_a_l-2-1)
                    (free_l-3-1)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (free_l-2-1)
             (at_a_l-3-1)
             (not (enab-enter-ship-auv_s1_l-2-1_a))
             (not (at_a_l-2-1))
             (not (free_l-3-1))
             (not (act-turn))
             (when (and (outside_s1))
                   (and (enab-enter-ship-free_s1_l-2-1) (not (disab-enter-ship-free_s1_l-2-1))))
             
             (when (and (at_s1_l-2-1) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-2) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action move_a_l-2-1_l-1-1
:parameters ()
:precondition (and 
                    (at_a_l-2-1)
                    (free_l-1-1)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (free_l-2-1)
             (at_a_l-1-1)
             (not (enab-enter-ship-auv_s1_l-2-1_a))
             (not (at_a_l-2-1))
             (not (free_l-1-1))
             (not (act-turn))
             (when (and (outside_s1))
                   (and (enab-enter-ship-free_s1_l-2-1) (not (disab-enter-ship-free_s1_l-2-1))))
             
             (when (and (at_s1_l-2-1) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-2) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action move_a_l-1-3_l-1-2
:parameters ()
:precondition (and 
                    (free_l-1-2)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-3)
              )
:effect (and 
             (ev-turn)
             (free_l-1-3)
             (at_a_l-1-2)
             (not (free_l-1-2))
             (not (act-turn))
             (not (at_a_l-1-3)))
)

(:action move_a_l-1-3_l-1-4
:parameters ()
:precondition (and 
                    (free_l-1-4)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-3)
              )
:effect (and 
             (ev-turn)
             (free_l-1-3)
             (at_a_l-1-4)
             (not (free_l-1-4))
             (not (act-turn))
             (not (at_a_l-1-3)))
)

(:action move_a_l-1-3_l-2-3
:parameters ()
:precondition (and 
                    (free_l-2-3)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-3)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (at_a_l-2-3)
             (free_l-1-3)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (at_a_l-1-3))
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (free_l-2-2))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-2-2_l-1-2
:parameters ()
:precondition (and 
                    (free_l-1-2)
                    (at_a_l-2-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (at_a_l-1-2)
             (free_l-2-2)
             (not (free_l-1-2))
             (not (at_a_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (act-turn))
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-2-2_l-2-1
:parameters ()
:precondition (and 
                    (at_a_l-2-2)
                    (act-turn)
                    (operational_a)
                    (free_l-2-1)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (at_a_l-2-1)
             (free_l-2-2)
             (ev-turn)
             (disab-enter-ship-free_s1_l-2-1)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (free_l-2-1))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (at_a_l-2-2))
             (not (act-turn))
             (not (enab-enter-ship-free_s1_l-2-1))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (outside_s1))
                   (and (enab-enter-ship-auv_s1_l-2-1_a) (not (disab-enter-ship-auv_s1_l-2-1_a))))
             
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-2-2_l-2-3
:parameters ()
:precondition (and 
                    (at_a_l-2-2)
                    (free_l-2-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (at_a_l-2-3)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (free_l-2-2)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-3))
             (not (at_a_l-2-2))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-2-2_l-3-2
:parameters ()
:precondition (and 
                    (free_l-3-2)
                    (at_a_l-2-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-2)
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (ev-turn)
             (free_l-2-2)
             (not (free_l-3-2))
             (not (at_a_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (act-turn))
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-3-1_l-2-1
:parameters ()
:precondition (and 
                    (free_l-2-1)
                    (act-turn)
                    (operational_a)
                    (at_a_l-3-1)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (at_a_l-2-1)
             (free_l-3-1)
             (ev-turn)
             (disab-enter-ship-free_s1_l-2-1)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (free_l-2-1))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (at_a_l-3-1))
             (not (act-turn))
             (not (enab-enter-ship-free_s1_l-2-1))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (outside_s1))
                   (and (enab-enter-ship-auv_s1_l-2-1_a) (not (disab-enter-ship-auv_s1_l-2-1_a))))
             )
)

(:action move_a_l-3-1_l-3-2
:parameters ()
:precondition (and 
                    (free_l-3-2)
                    (act-turn)
                    (operational_a)
                    (at_a_l-3-1)
              )
:effect (and 
             (at_a_l-3-2)
             (free_l-3-1)
             (ev-turn)
             (not (free_l-3-2))
             (not (act-turn))
             (not (at_a_l-3-1)))
)

(:action move_a_l-3-1_l-4-1
:parameters ()
:precondition (and 
                    (free_l-4-1)
                    (act-turn)
                    (operational_a)
                    (at_a_l-3-1)
              )
:effect (and 
             (ev-turn)
             (free_l-3-1)
             (at_a_l-4-1)
             (not (act-turn))
             (not (free_l-4-1))
             (not (at_a_l-3-1)))
)

(:action move_a_l-1-4_l-1-3
:parameters ()
:precondition (and 
                    (free_l-1-3)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-4)
              )
:effect (and 
             (ev-turn)
             (free_l-1-4)
             (at_a_l-1-3)
             (not (free_l-1-3))
             (not (act-turn))
             (not (at_a_l-1-4)))
)

(:action move_a_l-1-4_l-2-4
:parameters ()
:precondition (and 
                    (free_l-2-4)
                    (act-turn)
                    (operational_a)
                    (at_a_l-1-4)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-leave-ship_s1_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (at_a_l-2-4)
             (ev-turn)
             (free_l-1-4)
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-4))
             (not (at_a_l-1-4))
             (not (act-turn))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-leave-ship_s1_l-2-4))
             (when (and (free_l-2-4) (free_l-2-3) (at_s1_l-2-3) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-2-3_l-1-3
:parameters ()
:precondition (and 
                    (free_l-1-3)
                    (operational_a)
                    (at_a_l-2-3)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (at_a_l-1-3)
             (not (free_l-1-3))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (at_a_l-2-3))
             (not (act-turn))
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-2-3_l-2-2
:parameters ()
:precondition (and 
                    (free_l-2-2)
                    (operational_a)
                    (at_a_l-2-3)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (free_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (at_a_l-2-2)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (at_a_l-2-3))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (free_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (free_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-2-3_l-2-4
:parameters ()
:precondition (and 
                    (free_l-2-4)
                    (operational_a)
                    (at_a_l-2-3)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-leave-ship_s1_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (free_l-2-3)
             (at_a_l-2-4)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (not (at_a_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-4))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-leave-ship_s1_l-2-4))
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-2-3_l-3-3
:parameters ()
:precondition (and 
                    (free_l-3-3)
                    (operational_a)
                    (at_a_l-2-3)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-3)
             (free_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (not (free_l-3-3))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (at_a_l-2-3))
             (not (act-turn))
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-3-2_l-2-2
:parameters ()
:precondition (and 
                    (at_a_l-3-2)
                    (free_l-2-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (free_l-3-2)
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (at_a_l-2-2)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (free_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (at_a_l-3-2))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (free_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action move_a_l-3-2_l-3-1
:parameters ()
:precondition (and 
                    (at_a_l-3-2)
                    (free_l-3-1)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (free_l-3-2)
             (ev-turn)
             (at_a_l-3-1)
             (not (at_a_l-3-2))
             (not (free_l-3-1))
             (not (act-turn)))
)

(:action move_a_l-3-2_l-3-3
:parameters ()
:precondition (and 
                    (at_a_l-3-2)
                    (free_l-3-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-3)
             (ev-turn)
             (free_l-3-2)
             (not (at_a_l-3-2))
             (not (free_l-3-3))
             (not (act-turn)))
)

(:action move_a_l-3-2_l-4-2
:parameters ()
:precondition (and 
                    (at_a_l-3-2)
                    (free_l-4-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (free_l-3-2)
             (at_a_l-4-2)
             (ev-turn)
             (not (at_a_l-3-2))
             (not (free_l-4-2))
             (not (act-turn)))
)

(:action move_a_l-4-1_l-3-1
:parameters ()
:precondition (and 
                    (free_l-3-1)
                    (at_a_l-4-1)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free_l-4-1)
             (at_a_l-3-1)
             (not (free_l-3-1))
             (not (at_a_l-4-1))
             (not (act-turn)))
)

(:action move_a_l-4-1_l-4-2
:parameters ()
:precondition (and 
                    (free_l-4-2)
                    (at_a_l-4-1)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (at_a_l-4-2)
             (free_l-4-1)
             (not (free_l-4-2))
             (not (at_a_l-4-1))
             (not (act-turn)))
)

(:action move_a_l-2-4_l-1-4
:parameters ()
:precondition (and 
                    (free_l-1-4)
                    (at_a_l-2-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free_l-2-4)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (at_a_l-1-4)
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-1-4))
             (not (at_a_l-2-4))
             (not (act-turn))
             (when (and (free_l-2-3) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-3) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             
             (when (and (at_s1_l-2-4))
                   (and (enab-leave-ship_s1_l-2-4) (not (disab-leave-ship_s1_l-2-4))))
             )
)

(:action move_a_l-2-4_l-2-3
:parameters ()
:precondition (and 
                    (free_l-2-3)
                    (at_a_l-2-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (at_a_l-2-3)
             (free_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-3))
             (not (at_a_l-2-4))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (free_l-2-2))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-3) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-3) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             
             (when (and (at_s1_l-2-4))
                   (and (enab-leave-ship_s1_l-2-4) (not (disab-leave-ship_s1_l-2-4))))
             )
)

(:action move_a_l-2-4_l-3-4
:parameters ()
:precondition (and 
                    (free_l-3-4)
                    (at_a_l-2-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-4)
             (free_l-2-4)
             (ev-turn)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (at_a_l-2-4))
             (not (free_l-3-4))
             (not (act-turn))
             (when (and (free_l-2-3) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-3) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             
             (when (and (at_s1_l-2-4))
                   (and (enab-leave-ship_s1_l-2-4) (not (disab-leave-ship_s1_l-2-4))))
             )
)

(:action move_a_l-3-3_l-2-3
:parameters ()
:precondition (and 
                    (at_a_l-3-3)
                    (free_l-2-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (at_a_l-2-3)
             (free_l-3-3)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (ev-turn)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (act-turn))
             (not (at_a_l-3-3))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (free_l-2-2))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move_a_l-3-3_l-3-2
:parameters ()
:precondition (and 
                    (at_a_l-3-3)
                    (free_l-3-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-2)
             (free_l-3-3)
             (ev-turn)
             (not (at_a_l-3-3))
             (not (free_l-3-2))
             (not (act-turn)))
)

(:action move_a_l-3-3_l-3-4
:parameters ()
:precondition (and 
                    (at_a_l-3-3)
                    (free_l-3-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-4)
             (free_l-3-3)
             (ev-turn)
             (not (at_a_l-3-3))
             (not (free_l-3-4))
             (not (act-turn)))
)

(:action move_a_l-3-3_l-4-3
:parameters ()
:precondition (and 
                    (at_a_l-3-3)
                    (free_l-4-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-4-3)
             (free_l-3-3)
             (ev-turn)
             (not (at_a_l-3-3))
             (not (free_l-4-3))
             (not (act-turn)))
)

(:action move_a_l-4-2_l-3-2
:parameters ()
:precondition (and 
                    (free_l-3-2)
                    (at_a_l-4-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-2)
             (free_l-4-2)
             (ev-turn)
             (not (free_l-3-2))
             (not (at_a_l-4-2))
             (not (act-turn)))
)

(:action move_a_l-4-2_l-4-1
:parameters ()
:precondition (and 
                    (at_a_l-4-2)
                    (act-turn)
                    (operational_a)
                    (free_l-4-1)
              )
:effect (and 
             (ev-turn)
             (free_l-4-2)
             (at_a_l-4-1)
             (not (at_a_l-4-2))
             (not (free_l-4-1))
             (not (act-turn)))
)

(:action move_a_l-4-2_l-4-3
:parameters ()
:precondition (and 
                    (at_a_l-4-2)
                    (free_l-4-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-4-3)
             (free_l-4-2)
             (ev-turn)
             (not (at_a_l-4-2))
             (not (free_l-4-3))
             (not (act-turn)))
)

(:action sample_a_r2_l-4-2
:parameters ()
:precondition (and 
                    (at_a_l-4-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (sampled_r2)
             (not (act-turn)))
)

(:action move_a_l-3-4_l-2-4
:parameters ()
:precondition (and 
                    (at_a_l-3-4)
                    (free_l-2-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-leave-ship_s1_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (at_a_l-2-4)
             (ev-turn)
             (free_l-3-4)
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-4))
             (not (act-turn))
             (not (at_a_l-3-4))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-leave-ship_s1_l-2-4))
             (when (and (free_l-2-4) (free_l-2-3) (at_s1_l-2-3) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move_a_l-3-4_l-3-3
:parameters ()
:precondition (and 
                    (at_a_l-3-4)
                    (free_l-3-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-3)
             (ev-turn)
             (free_l-3-4)
             (not (at_a_l-3-4))
             (not (free_l-3-3))
             (not (act-turn)))
)

(:action move_a_l-3-4_l-4-4
:parameters ()
:precondition (and 
                    (at_a_l-3-4)
                    (free_l-4-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (at_a_l-4-4)
             (free_l-3-4)
             (not (at_a_l-3-4))
             (not (free_l-4-4))
             (not (act-turn)))
)

(:action sample_a_r4_l-3-4
:parameters ()
:precondition (and 
                    (at_a_l-3-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (sampled_r4)
             (not (act-turn)))
)

(:action move_a_l-4-3_l-3-3
:parameters ()
:precondition (and 
                    (at_a_l-4-3)
                    (free_l-3-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-3)
             (ev-turn)
             (free_l-4-3)
             (not (at_a_l-4-3))
             (not (free_l-3-3))
             (not (act-turn)))
)

(:action move_a_l-4-3_l-4-2
:parameters ()
:precondition (and 
                    (at_a_l-4-3)
                    (free_l-4-2)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (at_a_l-4-2)
             (free_l-4-3)
             (not (at_a_l-4-3))
             (not (free_l-4-2))
             (not (act-turn)))
)

(:action move_a_l-4-3_l-4-4
:parameters ()
:precondition (and 
                    (at_a_l-4-3)
                    (free_l-4-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (at_a_l-4-4)
             (free_l-4-3)
             (not (at_a_l-4-3))
             (not (free_l-4-4))
             (not (act-turn)))
)

(:action sample_a_r3_l-4-3
:parameters ()
:precondition (and 
                    (at_a_l-4-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (sampled_r3)
             (not (act-turn)))
)

(:action move_a_l-4-4_l-3-4
:parameters ()
:precondition (and 
                    (at_a_l-4-4)
                    (free_l-3-4)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-3-4)
             (free_l-4-4)
             (ev-turn)
             (not (at_a_l-4-4))
             (not (free_l-3-4))
             (not (act-turn)))
)

(:action move_a_l-4-4_l-4-3
:parameters ()
:precondition (and 
                    (at_a_l-4-4)
                    (free_l-4-3)
                    (operational_a)
                    (act-turn)
              )
:effect (and 
             (at_a_l-4-3)
             (free_l-4-4)
             (ev-turn)
             (not (at_a_l-4-4))
             (not (free_l-4-3))
             (not (act-turn)))
)


;;;;;;;;;;;
;;; noop
;;;;;;;;;;;

(:action noop
:parameters ()
:precondition (and (act-turn))
:effect (and
             (not (act-turn))
             (ev-turn)
        )
)

;;;;;;;;;;;
;;; switcher
;;;;;;;;;;;

(:action switch
:parameters ()
:precondition (and (ev-turn))
:effect (oneof (and (not (ev-turn))(act-turn))
               (and (not (ev-turn))(selected-enter-ship-free_s1_l-2-1))
               (and (not (ev-turn))(selected-enter-ship-auv_s1_l-2-1_a))
               (and (not (ev-turn))(selected-move-ship-free_s1_l-2-1_l-2-2))
               (and (not (ev-turn))(selected-move-ship-auv_s1_l-2-1_l-2-2_a))
               (and (not (ev-turn))(selected-move-ship-free_s1_l-2-2_l-2-3))
               (and (not (ev-turn))(selected-move-ship-auv_s1_l-2-2_l-2-3_a))
               (and (not (ev-turn))(selected-move-ship-free_s1_l-2-3_l-2-4))
               (and (not (ev-turn))(selected-move-ship-auv_s1_l-2-3_l-2-4_a))
               (and (not (ev-turn))(selected-leave-ship_s1_l-2-4))
               )
)

;;;;;;;;;;;
;;; events
;;;;;;;;;;;


(:action enter-ship-free_s1_l-2-1
:parameters ()
:precondition (and 
                    (outside_s1)
                    (selected-enter-ship-free_s1_l-2-1)
                    (enab-enter-ship-free_s1_l-2-1)
                    (free_l-2-1)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (disab-enter-ship-free_s1_l-2-1)
             (act-turn)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (at_s1_l-2-1)
             (not (free_l-2-1))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (outside_s1))
             (not (selected-enter-ship-free_s1_l-2-1))
             (not (enab-enter-ship-auv_s1_l-2-1_a))
             (not (enab-enter-ship-free_s1_l-2-1))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (when (and (free_l-2-2) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (free_l-2-2) (operational_a) (free_l-2-1))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action enter-ship-auv_s1_l-2-1_a
:parameters ()
:precondition (and 
                    (at_a_l-2-1)
                    (outside_s1)
                    (enab-enter-ship-auv_s1_l-2-1_a)
                    (selected-enter-ship-auv_s1_l-2-1_a)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-enter-ship-auv_s1_l-2-1_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (disab-enter-ship-free_s1_l-2-1)
             (act-turn)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (at_s1_l-2-1)
             (not (free_l-2-1))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (selected-enter-ship-auv_s1_l-2-1_a))
             (not (outside_s1))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (enab-enter-ship-auv_s1_l-2-1_a))
             (not (enab-enter-ship-free_s1_l-2-1))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (operational_a))
             (when (and (free_l-2-2) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (free_l-2-2) (operational_a) (free_l-2-1))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             )
)

(:action move-ship-free_s1_l-2-1_l-2-2
:parameters ()
:precondition (and 
                    (free_l-2-1)
                    (enab-move-ship-free_s1_l-2-1_l-2-2)
                    (free_l-2-2)
                    (at_s1_l-2-1)
                    (selected-move-ship-free_s1_l-2-1_l-2-2)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (free_l-2-1)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (at_s1_l-2-2)
             (act-turn)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (free_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (at_s1_l-2-1))
             (not (selected-move-ship-free_s1_l-2-1_l-2-2))
             (when (and (outside_s1))
                   (and (enab-enter-ship-free_s1_l-2-1) (not (disab-enter-ship-free_s1_l-2-1))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-2) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (free_l-2-3) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move-ship-auv_s1_l-2-1_l-2-2_a
:parameters ()
:precondition (and 
                    (free_l-2-1)
                    (selected-move-ship-auv_s1_l-2-1_l-2-2_a)
                    (free_l-2-2)
                    (at_a_l-2-2)
                    (enab-move-ship-auv_s1_l-2-1_l-2-2_a)
                    (at_s1_l-2-1)
                    (operational_a)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (free_l-2-1)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (at_s1_l-2-2)
             (act-turn)
             (disab-move-ship-free_s1_l-2-1_l-2-2)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (selected-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (enab-move-ship-free_s1_l-2-1_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (at_s1_l-2-1))
             (not (operational_a))
             (when (and (outside_s1))
                   (and (enab-enter-ship-free_s1_l-2-1) (not (disab-enter-ship-free_s1_l-2-1))))
             
             (when (and (at_s1_l-2-1) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (free_l-2-3) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             )
)

(:action move-ship-free_s1_l-2-2_l-2-3
:parameters ()
:precondition (and 
                    (enab-move-ship-free_s1_l-2-2_l-2-3)
                    (free_l-2-3)
                    (free_l-2-2)
                    (at_s1_l-2-2)
                    (selected-move-ship-free_s1_l-2-2_l-2-3)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (at_s1_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (free_l-2-2)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (act-turn)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-3))
             (not (at_s1_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (selected-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (free_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move-ship-auv_s1_l-2-2_l-2-3_a
:parameters ()
:precondition (and 
                    (at_a_l-2-3)
                    (selected-move-ship-auv_s1_l-2-2_l-2-3_a)
                    (free_l-2-3)
                    (free_l-2-2)
                    (at_s1_l-2-2)
                    (enab-move-ship-auv_s1_l-2-2_l-2-3_a)
                    (operational_a)
              )
:effect (and 
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (at_s1_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (free_l-2-2)
             (disab-move-ship-free_s1_l-2-2_l-2-3)
             (act-turn)
             (not (enab-move-ship-free_s1_l-2-2_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (selected-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (free_l-2-3))
             (not (at_s1_l-2-2))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (operational_a))
             (when (and (at_s1_l-2-1) (free_l-2-1))
                   (and (enab-move-ship-free_s1_l-2-1_l-2-2) (not (disab-move-ship-free_s1_l-2-1_l-2-2))))
             
             (when (and (at_a_l-2-2) (at_s1_l-2-1) (free_l-2-1) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-1_l-2-2_a) (not (disab-move-ship-auv_s1_l-2-1_l-2-2_a))))
             
             (when (and (at_s1_l-2-2) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-4) (free_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4) (free_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)

(:action move-ship-free_s1_l-2-3_l-2-4
:parameters ()
:precondition (and 
                    (selected-move-ship-free_s1_l-2-3_l-2-4)
                    (free_l-2-4)
                    (free_l-2-3)
                    (at_s1_l-2-3)
                    (enab-move-ship-free_s1_l-2-3_l-2-4)
              )
:effect (and 
             (at_s1_l-2-4)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-leave-ship_s1_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (free_l-2-3)
             (act-turn)
             (not (selected-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-4))
             (not (at_s1_l-2-3))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (enab-leave-ship_s1_l-2-4))
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             
             (when (and (free_l-2-4))
                   (and (enab-leave-ship_s1_l-2-4) (not (disab-leave-ship_s1_l-2-4))))
             )
)

(:action move-ship-auv_s1_l-2-3_l-2-4_a
:parameters ()
:precondition (and 
                    (enab-move-ship-auv_s1_l-2-3_l-2-4_a)
                    (free_l-2-4)
                    (free_l-2-3)
                    (at_s1_l-2-3)
                    (at_a_l-2-4)
                    (selected-move-ship-auv_s1_l-2-3_l-2-4_a)
                    (operational_a)
              )
:effect (and 
             (at_s1_l-2-4)
             (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
             (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
             (disab-leave-ship_s1_l-2-4)
             (disab-move-ship-free_s1_l-2-3_l-2-4)
             (free_l-2-3)
             (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
             (act-turn)
             (not (enab-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (free_l-2-4))
             (not (at_s1_l-2-3))
             (not (enab-move-ship-auv_s1_l-2-2_l-2-3_a))
             (not (enab-move-ship-free_s1_l-2-3_l-2-4))
             (not (selected-move-ship-auv_s1_l-2-3_l-2-4_a))
             (not (enab-move-ship-auv_s1_l-2-1_l-2-2_a))
             (not (enab-leave-ship_s1_l-2-4))
             (not (operational_a))
             (when (and (at_s1_l-2-2) (free_l-2-2))
                   (and (enab-move-ship-free_s1_l-2-2_l-2-3) (not (disab-move-ship-free_s1_l-2-2_l-2-3))))
             
             (when (and (free_l-2-2) (at_s1_l-2-2) (operational_a) (at_a_l-2-3))
                   (and (enab-move-ship-auv_s1_l-2-2_l-2-3_a) (not (disab-move-ship-auv_s1_l-2-2_l-2-3_a))))
             
             (when (and (free_l-2-4) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-4))
                   (and (enab-leave-ship_s1_l-2-4) (not (disab-leave-ship_s1_l-2-4))))
             )
)

(:action leave-ship_s1_l-2-4
:parameters ()
:precondition (and 
                    (at_s1_l-2-4)
                    (free_l-2-4)
                    (selected-leave-ship_s1_l-2-4)
                    (enab-leave-ship_s1_l-2-4)
              )
:effect (and 
             (disab-leave-ship_s1_l-2-4)
             (free_l-2-4)
             (gone_s1)
             (act-turn)
             (not (at_s1_l-2-4))
             (not (selected-leave-ship_s1_l-2-4))
             (not (enab-leave-ship_s1_l-2-4))
             (when (and (free_l-2-3) (at_s1_l-2-3))
                   (and (enab-move-ship-free_s1_l-2-3_l-2-4) (not (disab-move-ship-free_s1_l-2-3_l-2-4))))
             
             (when (and (free_l-2-3) (at_s1_l-2-3) (at_a_l-2-4) (operational_a))
                   (and (enab-move-ship-auv_s1_l-2-3_l-2-4_a) (not (disab-move-ship-auv_s1_l-2-3_l-2-4_a))))
             )
)



(:action enter-ship-free_s1_l-2-1-noop
:parameters ()
:precondition (and 
                    (selected-enter-ship-free_s1_l-2-1)
                    (disab-enter-ship-free_s1_l-2-1)
              )
:effect (and 
             (act-turn)
             (not (selected-enter-ship-free_s1_l-2-1)))
)

(:action enter-ship-auv_s1_l-2-1_a-noop
:parameters ()
:precondition (and 
                    (disab-enter-ship-auv_s1_l-2-1_a)
                    (selected-enter-ship-auv_s1_l-2-1_a)
              )
:effect (and 
             (act-turn)
             (not (selected-enter-ship-auv_s1_l-2-1_a)))
)

(:action move-ship-free_s1_l-2-1_l-2-2-noop
:parameters ()
:precondition (and 
                    (disab-move-ship-free_s1_l-2-1_l-2-2)
                    (selected-move-ship-free_s1_l-2-1_l-2-2)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-free_s1_l-2-1_l-2-2)))
)

(:action move-ship-auv_s1_l-2-1_l-2-2_a-noop
:parameters ()
:precondition (and 
                    (disab-move-ship-auv_s1_l-2-1_l-2-2_a)
                    (selected-move-ship-auv_s1_l-2-1_l-2-2_a)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-auv_s1_l-2-1_l-2-2_a)))
)

(:action move-ship-free_s1_l-2-2_l-2-3-noop
:parameters ()
:precondition (and 
                    (disab-move-ship-free_s1_l-2-2_l-2-3)
                    (selected-move-ship-free_s1_l-2-2_l-2-3)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-free_s1_l-2-2_l-2-3)))
)

(:action move-ship-auv_s1_l-2-2_l-2-3_a-noop
:parameters ()
:precondition (and 
                    (selected-move-ship-auv_s1_l-2-2_l-2-3_a)
                    (disab-move-ship-auv_s1_l-2-2_l-2-3_a)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-auv_s1_l-2-2_l-2-3_a)))
)

(:action move-ship-free_s1_l-2-3_l-2-4-noop
:parameters ()
:precondition (and 
                    (selected-move-ship-free_s1_l-2-3_l-2-4)
                    (disab-move-ship-free_s1_l-2-3_l-2-4)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-free_s1_l-2-3_l-2-4)))
)

(:action move-ship-auv_s1_l-2-3_l-2-4_a-noop
:parameters ()
:precondition (and 
                    (selected-move-ship-auv_s1_l-2-3_l-2-4_a)
                    (disab-move-ship-auv_s1_l-2-3_l-2-4_a)
              )
:effect (and 
             (act-turn)
             (not (selected-move-ship-auv_s1_l-2-3_l-2-4_a)))
)

(:action leave-ship_s1_l-2-4-noop
:parameters ()
:precondition (and 
                    (disab-leave-ship_s1_l-2-4)
                    (selected-leave-ship_s1_l-2-4)
              )
:effect (and 
             (act-turn)
             (not (selected-leave-ship_s1_l-2-4)))
)



)