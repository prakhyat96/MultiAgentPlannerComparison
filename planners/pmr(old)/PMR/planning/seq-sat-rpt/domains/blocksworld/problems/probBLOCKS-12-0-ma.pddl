(define (problem BLOCKS-12-0)
(:domain  ma-blocksworld)
(:objects  r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - robot I D B E K G A F C J L H - block)
(:INIT (HANDEMPTY r0) (HANDEMPTY r1) (HANDEMPTY r2) (HANDEMPTY r3) (HANDEMPTY r4) (HANDEMPTY r5) (HANDEMPTY r6) (HANDEMPTY r7) (HANDEMPTY r8) (HANDEMPTY r9) (HANDEMPTY r10) (CLEAR H) (CLEAR L) (CLEAR J) (ONTABLE C) (ONTABLE F) (ONTABLE J)
 (ON H A) (ON A G) (ON G K) (ON K E) (ON E B) (ON B D) (ON D I) (ON I C)
 (ON L F))
(:goal (AND (ON I C) (ON C B) (ON B L) (ON L D) (ON D J) (ON J E) (ON E K)
            (ON K F) (ON F A) (ON A H) (ON H G)))
)
