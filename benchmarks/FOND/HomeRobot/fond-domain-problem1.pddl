(define (domain homerobot)
(:requirements :non-deterministic)

(:predicates 
             (selected-move-human-corridor_h1_r2)
             (enab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r2)
             (selected-move-human-corridor_h2_r1)
             (enab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h2_r1)
             (selected-move-human-room_h1_r1)
             (enab-move-human-room_h1_r1)
             (disab-move-human-room_h1_r1)
             (selected-move-human-room_h1_r2)
             (enab-move-human-room_h1_r2)
             (disab-move-human-room_h1_r2)
             (selected-move-human-room_h1_r3)
             (enab-move-human-room_h1_r3)
             (disab-move-human-room_h1_r3)
             (selected-move-human-room_h1_r4)
             (enab-move-human-room_h1_r4)
             (disab-move-human-room_h1_r4)
             (selected-move-human-room_h2_r1)
             (enab-move-human-room_h2_r1)
             (disab-move-human-room_h2_r1)
             (selected-move-human-room_h2_r2)
             (enab-move-human-room_h2_r2)
             (disab-move-human-room_h2_r2)
             (selected-move-human-room_h2_r3)
             (enab-move-human-room_h2_r3)
             (disab-move-human-room_h2_r3)
             (selected-move-human-room_h2_r4)
             (enab-move-human-room_h2_r4)
             (disab-move-human-room_h2_r4)
             (selected-move-human-corridor_h1_r1)
             (enab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r1)
             (selected-move-human-corridor_h1_r3)
             (enab-move-human-corridor_h1_r3)
             (disab-move-human-corridor_h1_r3)
             (selected-move-human-corridor_h1_r4)
             (enab-move-human-corridor_h1_r4)
             (disab-move-human-corridor_h1_r4)
             (selected-move-human-corridor_h2_r2)
             (enab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h2_r2)
             (selected-move-human-corridor_h2_r3)
             (enab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r3)
             (selected-move-human-corridor_h2_r4)
             (enab-move-human-corridor_h2_r4)
             (disab-move-human-corridor_h2_r4)
             
             (prepared_r4)
             (at-human-corridor_h2)
             (unprepared_r4)
             (prepared_r1)
             (unprepared_r3)
             (at-robot_r2)
             (at-human_h2_r2)
             (at-human_h1_r3)
             (at-human_h1_r4)
             (unprepared_r1)
             (at-human_h2_r4)
             (prepared_r2)
             (at-human_h1_r1)
             (at-robot_r3)
             (at-human_h2_r1)
             (free-corridor)
             (at-robot_r4)
             (at-human-corridor_h1)
             (at-robot-corridor)
             (at-human_h2_r3)
             (unprepared_r2)
             (at-robot_r1)
             (prepared_r3)
             (at-human_h1_r2)
             (act-turn)
             (ev-turn)
)



(:action move-robot-corridor_r1
:parameters ()
:precondition (and 
                    (free-corridor)
                    (act-turn)
                    (at-robot_r1)
              )
:effect (and 
             (at-robot-corridor)
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (disab-move-human-corridor_h2_r4)
             (ev-turn)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (act-turn))
             (not (at-robot_r1))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2)))
)

(:action prepare-room_r1
:parameters ()
:precondition (and 
                    (unprepared_r1)
                    (act-turn)
                    (at-robot_r1)
              )
:effect (and 
             (ev-turn)
             (prepared_r1)
             (not (unprepared_r1))
             (not (act-turn)))
)

(:action move-robot-room_r1
:parameters ()
:precondition (and 
                    (at-robot-corridor)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free-corridor)
             (at-robot_r1)
             (not (at-robot-corridor))
             (not (act-turn))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-robot-room_r2
:parameters ()
:precondition (and 
                    (at-robot-corridor)
                    (act-turn)
              )
:effect (and 
             (at-robot_r2)
             (ev-turn)
             (free-corridor)
             (not (at-robot-corridor))
             (not (act-turn))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-robot-room_r3
:parameters ()
:precondition (and 
                    (at-robot-corridor)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free-corridor)
             (at-robot_r3)
             (not (at-robot-corridor))
             (not (act-turn))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-robot-room_r4
:parameters ()
:precondition (and 
                    (at-robot-corridor)
                    (act-turn)
              )
:effect (and 
             (ev-turn)
             (free-corridor)
             (at-robot_r4)
             (not (at-robot-corridor))
             (not (act-turn))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action prepare-room_r2
:parameters ()
:precondition (and 
                    (at-robot_r2)
                    (act-turn)
                    (unprepared_r2)
              )
:effect (and 
             (prepared_r2)
             (ev-turn)
             (not (act-turn))
             (not (unprepared_r2)))
)

(:action prepare-room_r3
:parameters ()
:precondition (and 
                    (unprepared_r3)
                    (act-turn)
                    (at-robot_r3)
              )
:effect (and 
             (prepared_r3)
             (ev-turn)
             (not (unprepared_r3))
             (not (act-turn)))
)

(:action prepare-room_r4
:parameters ()
:precondition (and 
                    (act-turn)
                    (unprepared_r4)
                    (at-robot_r4)
              )
:effect (and 
             (ev-turn)
             (prepared_r4)
             (not (unprepared_r4))
             (not (act-turn)))
)

(:action move-robot-corridor_r2
:parameters ()
:precondition (and 
                    (at-robot_r2)
                    (free-corridor)
                    (act-turn)
              )
:effect (and 
             (at-robot-corridor)
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (disab-move-human-corridor_h2_r4)
             (ev-turn)
             (not (enab-move-human-corridor_h1_r3))
             (not (at-robot_r2))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (act-turn))
             (not (enab-move-human-corridor_h1_r2))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2)))
)

(:action move-robot-corridor_r3
:parameters ()
:precondition (and 
                    (act-turn)
                    (free-corridor)
                    (at-robot_r3)
              )
:effect (and 
             (at-robot-corridor)
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (disab-move-human-corridor_h2_r4)
             (ev-turn)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (act-turn))
             (not (at-robot_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2)))
)

(:action move-robot-corridor_r4
:parameters ()
:precondition (and 
                    (act-turn)
                    (free-corridor)
                    (at-robot_r4)
              )
:effect (and 
             (at-robot-corridor)
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (disab-move-human-corridor_h2_r4)
             (ev-turn)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (at-robot_r4))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (act-turn))
             (not (enab-move-human-corridor_h1_r2))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2)))
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
               (and (not (ev-turn))(selected-move-human-corridor_h1_r2))
               (and (not (ev-turn))(selected-move-human-corridor_h2_r1))
               (and (not (ev-turn))(selected-move-human-room_h1_r1))
               (and (not (ev-turn))(selected-move-human-room_h1_r2))
               (and (not (ev-turn))(selected-move-human-room_h1_r3))
               (and (not (ev-turn))(selected-move-human-room_h1_r4))
               (and (not (ev-turn))(selected-move-human-room_h2_r1))
               (and (not (ev-turn))(selected-move-human-room_h2_r2))
               (and (not (ev-turn))(selected-move-human-room_h2_r3))
               (and (not (ev-turn))(selected-move-human-room_h2_r4))
               (and (not (ev-turn))(selected-move-human-corridor_h1_r1))
               (and (not (ev-turn))(selected-move-human-corridor_h1_r3))
               (and (not (ev-turn))(selected-move-human-corridor_h1_r4))
               (and (not (ev-turn))(selected-move-human-corridor_h2_r2))
               (and (not (ev-turn))(selected-move-human-corridor_h2_r3))
               (and (not (ev-turn))(selected-move-human-corridor_h2_r4))
               )
)

;;;;;;;;;;;
;;; events
;;;;;;;;;;;


(:action move-human-corridor_h1_r2
:parameters ()
:precondition (and 
                    (at-human_h1_r2)
                    (selected-move-human-corridor_h1_r2)
                    (free-corridor)
                    (enab-move-human-corridor_h1_r2)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (enab-move-human-room_h1_r2)
             (enab-move-human-room_h1_r3)
             (enab-move-human-room_h1_r1)
             (at-human-corridor_h1)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (at-human_h1_r2))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h1_r2))
             (not (disab-move-human-room_h1_r3))
             (not (selected-move-human-corridor_h1_r2))
             (not (free-corridor))
             (not (disab-move-human-room_h1_r1))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h1_r4)))
)

(:action move-human-corridor_h2_r1
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h2_r1)
                    (free-corridor)
                    (at-human_h2_r1)
                    (enab-move-human-corridor_h2_r1)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (enab-move-human-room_h2_r3)
             (enab-move-human-room_h2_r2)
             (enab-move-human-room_h2_r4)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h2_r1)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (at-human-corridor_h2)
             (not (enab-move-human-corridor_h1_r3))
             (not (selected-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (disab-move-human-room_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (at-human_h2_r1))
             (not (disab-move-human-room_h2_r4))
             (not (enab-move-human-corridor_h2_r3))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h2_r2))
             (not (disab-move-human-room_h2_r1)))
)

(:action move-human-room_h1_r1
:parameters ()
:precondition (and 
                    (selected-move-human-room_h1_r1)
                    (enab-move-human-room_h1_r1)
                    (at-human-corridor_h1)
              )
:effect (and 
             (enab-move-human-corridor_h1_r1)
             (disab-move-human-room_h1_r3)
             (disab-move-human-room_h1_r2)
             (act-turn)
             (free-corridor)
             (at-human_h1_r1)
             (disab-move-human-room_h1_r1)
             (disab-move-human-room_h1_r4)
             (not (enab-move-human-room_h1_r4))
             (not (disab-move-human-corridor_h1_r1))
             (not (enab-move-human-room_h1_r2))
             (not (enab-move-human-room_h1_r3))
             (not (enab-move-human-room_h1_r1))
             (not (at-human-corridor_h1))
             (not (selected-move-human-room_h1_r1))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h1_r2
:parameters ()
:precondition (and 
                    (enab-move-human-room_h1_r2)
                    (at-human-corridor_h1)
                    (selected-move-human-room_h1_r2)
              )
:effect (and 
             (at-human_h1_r2)
             (enab-move-human-corridor_h1_r2)
             (disab-move-human-room_h1_r2)
             (disab-move-human-room_h1_r3)
             (act-turn)
             (free-corridor)
             (disab-move-human-room_h1_r1)
             (disab-move-human-room_h1_r4)
             (not (enab-move-human-room_h1_r4))
             (not (disab-move-human-corridor_h1_r2))
             (not (enab-move-human-room_h1_r2))
             (not (enab-move-human-room_h1_r3))
             (not (enab-move-human-room_h1_r1))
             (not (at-human-corridor_h1))
             (not (selected-move-human-room_h1_r2))
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h1_r3
:parameters ()
:precondition (and 
                    (enab-move-human-room_h1_r3)
                    (at-human-corridor_h1)
                    (selected-move-human-room_h1_r3)
              )
:effect (and 
             (enab-move-human-corridor_h1_r3)
             (disab-move-human-room_h1_r3)
             (disab-move-human-room_h1_r2)
             (act-turn)
             (free-corridor)
             (disab-move-human-room_h1_r1)
             (at-human_h1_r3)
             (disab-move-human-room_h1_r4)
             (not (enab-move-human-room_h1_r4))
             (not (disab-move-human-corridor_h1_r3))
             (not (selected-move-human-room_h1_r3))
             (not (enab-move-human-room_h1_r2))
             (not (enab-move-human-room_h1_r3))
             (not (enab-move-human-room_h1_r1))
             (not (at-human-corridor_h1))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h1_r4
:parameters ()
:precondition (and 
                    (enab-move-human-room_h1_r4)
                    (selected-move-human-room_h1_r4)
                    (at-human-corridor_h1)
              )
:effect (and 
             (enab-move-human-corridor_h1_r4)
             (disab-move-human-room_h1_r3)
             (disab-move-human-room_h1_r2)
             (act-turn)
             (at-human_h1_r4)
             (free-corridor)
             (disab-move-human-room_h1_r1)
             (disab-move-human-room_h1_r4)
             (not (disab-move-human-corridor_h1_r4))
             (not (enab-move-human-room_h1_r4))
             (not (selected-move-human-room_h1_r4))
             (not (enab-move-human-room_h1_r2))
             (not (enab-move-human-room_h1_r3))
             (not (enab-move-human-room_h1_r1))
             (not (at-human-corridor_h1))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h2_r1
:parameters ()
:precondition (and 
                    (enab-move-human-room_h2_r1)
                    (selected-move-human-room_h2_r1)
                    (at-human-corridor_h2)
              )
:effect (and 
             (enab-move-human-corridor_h2_r1)
             (disab-move-human-room_h2_r3)
             (act-turn)
             (at-human_h2_r1)
             (disab-move-human-room_h2_r4)
             (free-corridor)
             (disab-move-human-room_h2_r2)
             (disab-move-human-room_h2_r1)
             (not (enab-move-human-room_h2_r3))
             (not (enab-move-human-room_h2_r2))
             (not (enab-move-human-room_h2_r4))
             (not (disab-move-human-corridor_h2_r1))
             (not (enab-move-human-room_h2_r1))
             (not (selected-move-human-room_h2_r1))
             (not (at-human-corridor_h2))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h2_r2
:parameters ()
:precondition (and 
                    (enab-move-human-room_h2_r2)
                    (at-human-corridor_h2)
                    (selected-move-human-room_h2_r2)
              )
:effect (and 
             (disab-move-human-room_h2_r3)
             (act-turn)
             (disab-move-human-room_h2_r4)
             (free-corridor)
             (at-human_h2_r2)
             (enab-move-human-corridor_h2_r2)
             (disab-move-human-room_h2_r2)
             (disab-move-human-room_h2_r1)
             (not (enab-move-human-room_h2_r3))
             (not (enab-move-human-room_h2_r2))
             (not (enab-move-human-room_h2_r4))
             (not (enab-move-human-room_h2_r1))
             (not (disab-move-human-corridor_h2_r2))
             (not (at-human-corridor_h2))
             (not (selected-move-human-room_h2_r2))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h2_r3
:parameters ()
:precondition (and 
                    (enab-move-human-room_h2_r3)
                    (selected-move-human-room_h2_r3)
                    (at-human-corridor_h2)
              )
:effect (and 
             (disab-move-human-room_h2_r3)
             (disab-move-human-room_h2_r2)
             (disab-move-human-room_h2_r4)
             (enab-move-human-corridor_h2_r3)
             (act-turn)
             (free-corridor)
             (at-human_h2_r3)
             (disab-move-human-room_h2_r1)
             (not (disab-move-human-corridor_h2_r3))
             (not (enab-move-human-room_h2_r3))
             (not (enab-move-human-room_h2_r2))
             (not (enab-move-human-room_h2_r4))
             (not (enab-move-human-room_h2_r1))
             (not (selected-move-human-room_h2_r3))
             (not (at-human-corridor_h2))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r4))
                   (and (enab-move-human-corridor_h2_r4) (not (disab-move-human-corridor_h2_r4))))
             )
)

(:action move-human-room_h2_r4
:parameters ()
:precondition (and 
                    (enab-move-human-room_h2_r4)
                    (selected-move-human-room_h2_r4)
                    (at-human-corridor_h2)
              )
:effect (and 
             (at-human_h2_r4)
             (enab-move-human-corridor_h2_r4)
             (disab-move-human-room_h2_r3)
             (act-turn)
             (disab-move-human-room_h2_r4)
             (free-corridor)
             (disab-move-human-room_h2_r2)
             (disab-move-human-room_h2_r1)
             (not (enab-move-human-room_h2_r3))
             (not (enab-move-human-room_h2_r2))
             (not (enab-move-human-room_h2_r4))
             (not (enab-move-human-room_h2_r1))
             (not (disab-move-human-corridor_h2_r4))
             (not (selected-move-human-room_h2_r4))
             (not (at-human-corridor_h2))
             (when (and (at-human_h1_r2))
                   (and (enab-move-human-corridor_h1_r2) (not (disab-move-human-corridor_h1_r2))))
             
             (when (and (at-human_h2_r1))
                   (and (enab-move-human-corridor_h2_r1) (not (disab-move-human-corridor_h2_r1))))
             
             (when (and (at-human_h1_r1))
                   (and (enab-move-human-corridor_h1_r1) (not (disab-move-human-corridor_h1_r1))))
             
             (when (and (at-human_h1_r3))
                   (and (enab-move-human-corridor_h1_r3) (not (disab-move-human-corridor_h1_r3))))
             
             (when (and (at-human_h1_r4))
                   (and (enab-move-human-corridor_h1_r4) (not (disab-move-human-corridor_h1_r4))))
             
             (when (and (at-human_h2_r2))
                   (and (enab-move-human-corridor_h2_r2) (not (disab-move-human-corridor_h2_r2))))
             
             (when (and (at-human_h2_r3))
                   (and (enab-move-human-corridor_h2_r3) (not (disab-move-human-corridor_h2_r3))))
             )
)

(:action move-human-corridor_h1_r1
:parameters ()
:precondition (and 
                    (enab-move-human-corridor_h1_r1)
                    (selected-move-human-corridor_h1_r1)
                    (free-corridor)
                    (at-human_h1_r1)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (enab-move-human-room_h1_r2)
             (enab-move-human-room_h1_r3)
             (enab-move-human-room_h1_r1)
             (at-human-corridor_h1)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (selected-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h1_r2))
             (not (disab-move-human-room_h1_r3))
             (not (free-corridor))
             (not (at-human_h1_r1))
             (not (disab-move-human-room_h1_r1))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h1_r4)))
)

(:action move-human-corridor_h1_r3
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h1_r3)
                    (free-corridor)
                    (at-human_h1_r3)
                    (enab-move-human-corridor_h1_r3)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (enab-move-human-room_h1_r2)
             (enab-move-human-room_h1_r3)
             (enab-move-human-room_h1_r1)
             (at-human-corridor_h1)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h1_r2))
             (not (disab-move-human-room_h1_r3))
             (not (free-corridor))
             (not (selected-move-human-corridor_h1_r3))
             (not (disab-move-human-room_h1_r1))
             (not (enab-move-human-corridor_h2_r2))
             (not (at-human_h1_r3))
             (not (disab-move-human-room_h1_r4)))
)

(:action move-human-corridor_h1_r4
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h1_r4)
                    (at-human_h1_r4)
                    (free-corridor)
                    (enab-move-human-corridor_h1_r4)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h1_r4)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (enab-move-human-room_h1_r2)
             (enab-move-human-room_h1_r3)
             (enab-move-human-room_h1_r1)
             (at-human-corridor_h1)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (enab-move-human-corridor_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h1_r2))
             (not (disab-move-human-room_h1_r3))
             (not (at-human_h1_r4))
             (not (free-corridor))
             (not (selected-move-human-corridor_h1_r4))
             (not (disab-move-human-room_h1_r1))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h1_r4)))
)

(:action move-human-corridor_h2_r2
:parameters ()
:precondition (and 
                    (at-human_h2_r2)
                    (enab-move-human-corridor_h2_r2)
                    (selected-move-human-corridor_h2_r2)
                    (free-corridor)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (enab-move-human-room_h2_r3)
             (enab-move-human-room_h2_r2)
             (enab-move-human-room_h2_r4)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h2_r1)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (at-human-corridor_h2)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (disab-move-human-room_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h2_r4))
             (not (enab-move-human-corridor_h2_r3))
             (not (selected-move-human-corridor_h2_r2))
             (not (free-corridor))
             (not (at-human_h2_r2))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h2_r2))
             (not (disab-move-human-room_h2_r1)))
)

(:action move-human-corridor_h2_r3
:parameters ()
:precondition (and 
                    (enab-move-human-corridor_h2_r3)
                    (at-human_h2_r3)
                    (free-corridor)
                    (selected-move-human-corridor_h2_r3)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (enab-move-human-room_h2_r3)
             (enab-move-human-room_h2_r2)
             (enab-move-human-room_h2_r4)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h2_r1)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (at-human-corridor_h2)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (disab-move-human-room_h2_r2))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h2_r3))
             (not (disab-move-human-room_h2_r4))
             (not (enab-move-human-corridor_h2_r3))
             (not (selected-move-human-corridor_h2_r3))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2))
             (not (at-human_h2_r3))
             (not (disab-move-human-room_h2_r1)))
)

(:action move-human-corridor_h2_r4
:parameters ()
:precondition (and 
                    (enab-move-human-corridor_h2_r4)
                    (selected-move-human-corridor_h2_r4)
                    (free-corridor)
                    (at-human_h2_r4)
              )
:effect (and 
             (disab-move-human-corridor_h2_r3)
             (enab-move-human-room_h2_r3)
             (enab-move-human-room_h2_r2)
             (enab-move-human-room_h2_r4)
             (disab-move-human-corridor_h2_r1)
             (disab-move-human-corridor_h1_r4)
             (enab-move-human-room_h2_r1)
             (disab-move-human-corridor_h2_r2)
             (disab-move-human-corridor_h1_r2)
             (disab-move-human-corridor_h1_r1)
             (disab-move-human-corridor_h1_r3)
             (act-turn)
             (disab-move-human-corridor_h2_r4)
             (at-human-corridor_h2)
             (not (enab-move-human-corridor_h1_r3))
             (not (enab-move-human-corridor_h1_r1))
             (not (enab-move-human-corridor_h1_r4))
             (not (at-human_h2_r4))
             (not (enab-move-human-corridor_h2_r4))
             (not (enab-move-human-corridor_h2_r1))
             (not (disab-move-human-room_h2_r3))
             (not (enab-move-human-corridor_h1_r2))
             (not (disab-move-human-room_h2_r4))
             (not (enab-move-human-corridor_h2_r3))
             (not (selected-move-human-corridor_h2_r4))
             (not (free-corridor))
             (not (enab-move-human-corridor_h2_r2))
             (not (disab-move-human-room_h2_r2))
             (not (disab-move-human-room_h2_r1)))
)



(:action move-human-corridor_h1_r2-noop
:parameters ()
:precondition (and 
                    (disab-move-human-corridor_h1_r2)
                    (selected-move-human-corridor_h1_r2)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h1_r2)))
)

(:action move-human-corridor_h2_r1-noop
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h2_r1)
                    (disab-move-human-corridor_h2_r1)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h2_r1)))
)

(:action move-human-room_h1_r1-noop
:parameters ()
:precondition (and 
                    (selected-move-human-room_h1_r1)
                    (disab-move-human-room_h1_r1)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h1_r1)))
)

(:action move-human-room_h1_r2-noop
:parameters ()
:precondition (and 
                    (disab-move-human-room_h1_r2)
                    (selected-move-human-room_h1_r2)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h1_r2)))
)

(:action move-human-room_h1_r3-noop
:parameters ()
:precondition (and 
                    (disab-move-human-room_h1_r3)
                    (selected-move-human-room_h1_r3)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h1_r3)))
)

(:action move-human-room_h1_r4-noop
:parameters ()
:precondition (and 
                    (selected-move-human-room_h1_r4)
                    (disab-move-human-room_h1_r4)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h1_r4)))
)

(:action move-human-room_h2_r1-noop
:parameters ()
:precondition (and 
                    (selected-move-human-room_h2_r1)
                    (disab-move-human-room_h2_r1)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h2_r1)))
)

(:action move-human-room_h2_r2-noop
:parameters ()
:precondition (and 
                    (disab-move-human-room_h2_r2)
                    (selected-move-human-room_h2_r2)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h2_r2)))
)

(:action move-human-room_h2_r3-noop
:parameters ()
:precondition (and 
                    (selected-move-human-room_h2_r3)
                    (disab-move-human-room_h2_r3)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h2_r3)))
)

(:action move-human-room_h2_r4-noop
:parameters ()
:precondition (and 
                    (selected-move-human-room_h2_r4)
                    (disab-move-human-room_h2_r4)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-room_h2_r4)))
)

(:action move-human-corridor_h1_r1-noop
:parameters ()
:precondition (and 
                    (disab-move-human-corridor_h1_r1)
                    (selected-move-human-corridor_h1_r1)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h1_r1)))
)

(:action move-human-corridor_h1_r3-noop
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h1_r3)
                    (disab-move-human-corridor_h1_r3)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h1_r3)))
)

(:action move-human-corridor_h1_r4-noop
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h1_r4)
                    (disab-move-human-corridor_h1_r4)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h1_r4)))
)

(:action move-human-corridor_h2_r2-noop
:parameters ()
:precondition (and 
                    (disab-move-human-corridor_h2_r2)
                    (selected-move-human-corridor_h2_r2)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h2_r2)))
)

(:action move-human-corridor_h2_r3-noop
:parameters ()
:precondition (and 
                    (disab-move-human-corridor_h2_r3)
                    (selected-move-human-corridor_h2_r3)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h2_r3)))
)

(:action move-human-corridor_h2_r4-noop
:parameters ()
:precondition (and 
                    (selected-move-human-corridor_h2_r4)
                    (disab-move-human-corridor_h2_r4)
              )
:effect (and 
             (act-turn)
             (not (selected-move-human-corridor_h2_r4)))
)



)