(define (problem HomeRobot-problem-r8h4)
(:domain HomeRobot)
(:objects 
r1 r2 r3 r4 r5 r6 r7 r8 - room
h1 h2 h3 h4 - human
)
(:init
(at-robot r1)
(free-corridor)
(unprepared r1)
(unprepared r2)
(unprepared r3)
(unprepared r4)
(unprepared r5)
(unprepared r6)
(unprepared r7)
(unprepared r8)
(at-human h1 r1)
(at-human h2 r2)
(at-human h3 r3)
(at-human h4 r4)
)
(:goal (and 
(prepared r1)
(prepared r2)
(prepared r3)
(prepared r4)
(prepared r5)
(prepared r6)
(prepared r7)
(prepared r8)
))
)
