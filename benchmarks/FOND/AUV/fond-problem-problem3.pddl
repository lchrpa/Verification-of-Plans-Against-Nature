(define (problem auv-problem-6x6-1)
(:domain auv)

(:init
    (act-turn)
    (at-res_r1_l-5-1)
    (at-res_r2_l-1-2)
    (at-res_r3_l-2-3)
    (at-res_r4_l-2-5)
    (at-res_r5_l-6-5)
    (at-res_r6_l-3-6)
    (at_a_l-1-1)
    (connected-ship_s1_l-2-2_l-2-1)
    (connected-ship_s1_l-2-3_l-2-2)
    (connected-ship_s1_l-2-4_l-2-3)
    (connected-ship_s1_l-2-5_l-2-4)
    (connected-ship_s1_l-2-6_l-2-5)
    (connected-ship_s2_l-5-2_l-5-1)
    (connected-ship_s2_l-5-3_l-5-2)
    (connected-ship_s2_l-5-4_l-5-3)
    (connected-ship_s2_l-5-5_l-5-4)
    (connected-ship_s2_l-5-6_l-5-5)
    (connected-ship_s3_l-6-2_l-6-1)
    (connected-ship_s3_l-6-3_l-6-2)
    (connected-ship_s3_l-6-4_l-6-3)
    (connected-ship_s3_l-6-5_l-6-4)
    (connected-ship_s3_l-6-6_l-6-5)
    (connected_l-1-1_l-1-2)
    (connected_l-1-1_l-2-1)
    (connected_l-1-2_l-1-1)
    (connected_l-1-2_l-1-3)
    (connected_l-1-2_l-2-2)
    (connected_l-1-3_l-1-2)
    (connected_l-1-3_l-1-4)
    (connected_l-1-3_l-2-3)
    (connected_l-1-4_l-1-3)
    (connected_l-1-4_l-1-5)
    (connected_l-1-4_l-2-4)
    (connected_l-1-5_l-1-4)
    (connected_l-1-5_l-1-6)
    (connected_l-1-5_l-2-5)
    (connected_l-1-6_l-1-5)
    (connected_l-1-6_l-2-6)
    (connected_l-2-1_l-1-1)
    (connected_l-2-1_l-2-2)
    (connected_l-2-1_l-3-1)
    (connected_l-2-2_l-1-2)
    (connected_l-2-2_l-2-1)
    (connected_l-2-2_l-2-3)
    (connected_l-2-2_l-3-2)
    (connected_l-2-3_l-1-3)
    (connected_l-2-3_l-2-2)
    (connected_l-2-3_l-2-4)
    (connected_l-2-3_l-3-3)
    (connected_l-2-4_l-1-4)
    (connected_l-2-4_l-2-3)
    (connected_l-2-4_l-2-5)
    (connected_l-2-4_l-3-4)
    (connected_l-2-5_l-1-5)
    (connected_l-2-5_l-2-4)
    (connected_l-2-5_l-2-6)
    (connected_l-2-5_l-3-5)
    (connected_l-2-6_l-1-6)
    (connected_l-2-6_l-2-5)
    (connected_l-2-6_l-3-6)
    (connected_l-3-1_l-2-1)
    (connected_l-3-1_l-3-2)
    (connected_l-3-1_l-4-1)
    (connected_l-3-2_l-2-2)
    (connected_l-3-2_l-3-1)
    (connected_l-3-2_l-3-3)
    (connected_l-3-2_l-4-2)
    (connected_l-3-3_l-2-3)
    (connected_l-3-3_l-3-2)
    (connected_l-3-3_l-3-4)
    (connected_l-3-3_l-4-3)
    (connected_l-3-4_l-2-4)
    (connected_l-3-4_l-3-3)
    (connected_l-3-4_l-3-5)
    (connected_l-3-4_l-4-4)
    (connected_l-3-5_l-2-5)
    (connected_l-3-5_l-3-4)
    (connected_l-3-5_l-3-6)
    (connected_l-3-5_l-4-5)
    (connected_l-3-6_l-2-6)
    (connected_l-3-6_l-3-5)
    (connected_l-3-6_l-4-6)
    (connected_l-4-1_l-3-1)
    (connected_l-4-1_l-4-2)
    (connected_l-4-1_l-5-1)
    (connected_l-4-2_l-3-2)
    (connected_l-4-2_l-4-1)
    (connected_l-4-2_l-4-3)
    (connected_l-4-2_l-5-2)
    (connected_l-4-3_l-3-3)
    (connected_l-4-3_l-4-2)
    (connected_l-4-3_l-4-4)
    (connected_l-4-3_l-5-3)
    (connected_l-4-4_l-3-4)
    (connected_l-4-4_l-4-3)
    (connected_l-4-4_l-4-5)
    (connected_l-4-4_l-5-4)
    (connected_l-4-5_l-3-5)
    (connected_l-4-5_l-4-4)
    (connected_l-4-5_l-4-6)
    (connected_l-4-5_l-5-5)
    (connected_l-4-6_l-3-6)
    (connected_l-4-6_l-4-5)
    (connected_l-4-6_l-5-6)
    (connected_l-5-1_l-4-1)
    (connected_l-5-1_l-5-2)
    (connected_l-5-1_l-6-1)
    (connected_l-5-2_l-4-2)
    (connected_l-5-2_l-5-1)
    (connected_l-5-2_l-5-3)
    (connected_l-5-2_l-6-2)
    (connected_l-5-3_l-4-3)
    (connected_l-5-3_l-5-2)
    (connected_l-5-3_l-5-4)
    (connected_l-5-3_l-6-3)
    (connected_l-5-4_l-4-4)
    (connected_l-5-4_l-5-3)
    (connected_l-5-4_l-5-5)
    (connected_l-5-4_l-6-4)
    (connected_l-5-5_l-4-5)
    (connected_l-5-5_l-5-4)
    (connected_l-5-5_l-5-6)
    (connected_l-5-5_l-6-5)
    (connected_l-5-6_l-4-6)
    (connected_l-5-6_l-5-5)
    (connected_l-5-6_l-6-6)
    (connected_l-6-1_l-5-1)
    (connected_l-6-1_l-6-2)
    (connected_l-6-2_l-5-2)
    (connected_l-6-2_l-6-1)
    (connected_l-6-2_l-6-3)
    (connected_l-6-3_l-5-3)
    (connected_l-6-3_l-6-2)
    (connected_l-6-3_l-6-4)
    (connected_l-6-4_l-5-4)
    (connected_l-6-4_l-6-3)
    (connected_l-6-4_l-6-5)
    (connected_l-6-5_l-5-5)
    (connected_l-6-5_l-6-4)
    (connected_l-6-5_l-6-6)
    (connected_l-6-6_l-5-6)
    (connected_l-6-6_l-6-5)
    (disab-enter-ship-auv_s1_l-2-6_a)
    (disab-enter-ship-auv_s2_l-5-6_a)
    (disab-enter-ship-auv_s3_l-6-6_a)
    (disab-leave-ship_s1_l-2-1)
    (disab-leave-ship_s2_l-5-1)
    (disab-leave-ship_s3_l-6-1)
    (disab-move-ship-auv_s1_l-2-2_l-2-1_a)
    (disab-move-ship-auv_s1_l-2-3_l-2-2_a)
    (disab-move-ship-auv_s1_l-2-4_l-2-3_a)
    (disab-move-ship-auv_s1_l-2-5_l-2-4_a)
    (disab-move-ship-auv_s1_l-2-6_l-2-5_a)
    (disab-move-ship-auv_s2_l-5-2_l-5-1_a)
    (disab-move-ship-auv_s2_l-5-3_l-5-2_a)
    (disab-move-ship-auv_s2_l-5-4_l-5-3_a)
    (disab-move-ship-auv_s2_l-5-5_l-5-4_a)
    (disab-move-ship-auv_s2_l-5-6_l-5-5_a)
    (disab-move-ship-auv_s3_l-6-2_l-6-1_a)
    (disab-move-ship-auv_s3_l-6-3_l-6-2_a)
    (disab-move-ship-auv_s3_l-6-4_l-6-3_a)
    (disab-move-ship-auv_s3_l-6-5_l-6-4_a)
    (disab-move-ship-auv_s3_l-6-6_l-6-5_a)
    (disab-move-ship-free_s1_l-2-2_l-2-1)
    (disab-move-ship-free_s1_l-2-3_l-2-2)
    (disab-move-ship-free_s1_l-2-4_l-2-3)
    (disab-move-ship-free_s1_l-2-5_l-2-4)
    (disab-move-ship-free_s1_l-2-6_l-2-5)
    (disab-move-ship-free_s2_l-5-2_l-5-1)
    (disab-move-ship-free_s2_l-5-3_l-5-2)
    (disab-move-ship-free_s2_l-5-4_l-5-3)
    (disab-move-ship-free_s2_l-5-5_l-5-4)
    (disab-move-ship-free_s2_l-5-6_l-5-5)
    (disab-move-ship-free_s3_l-6-2_l-6-1)
    (disab-move-ship-free_s3_l-6-3_l-6-2)
    (disab-move-ship-free_s3_l-6-4_l-6-3)
    (disab-move-ship-free_s3_l-6-5_l-6-4)
    (disab-move-ship-free_s3_l-6-6_l-6-5)
    (enab-enter-ship-free_s1_l-2-6)
    (enab-enter-ship-free_s2_l-5-6)
    (enab-enter-ship-free_s3_l-6-6)
    (entry_s1_l-2-6)
    (entry_s2_l-5-6)
    (entry_s3_l-6-6)
    (exit_s1_l-2-1)
    (exit_s2_l-5-1)
    (exit_s3_l-6-1)
    (free_l-1-2)
    (free_l-1-3)
    (free_l-1-4)
    (free_l-1-5)
    (free_l-1-6)
    (free_l-2-1)
    (free_l-2-2)
    (free_l-2-3)
    (free_l-2-4)
    (free_l-2-5)
    (free_l-2-6)
    (free_l-3-1)
    (free_l-3-2)
    (free_l-3-3)
    (free_l-3-4)
    (free_l-3-5)
    (free_l-3-6)
    (free_l-4-1)
    (free_l-4-2)
    (free_l-4-3)
    (free_l-4-4)
    (free_l-4-5)
    (free_l-4-6)
    (free_l-5-1)
    (free_l-5-2)
    (free_l-5-3)
    (free_l-5-4)
    (free_l-5-5)
    (free_l-5-6)
    (free_l-6-1)
    (free_l-6-2)
    (free_l-6-3)
    (free_l-6-4)
    (free_l-6-5)
    (free_l-6-6)
    (operational_a)
    (outside_s1)
    (outside_s2)
    (outside_s3)
)

(:goal
    (and
        (operational_a)
        (at_a_l-1-1)
        (sampled_r1)
        (sampled_r2)
        (sampled_r3)
        (sampled_r4)
        (sampled_r5)
        (sampled_r6)
    )
)

)