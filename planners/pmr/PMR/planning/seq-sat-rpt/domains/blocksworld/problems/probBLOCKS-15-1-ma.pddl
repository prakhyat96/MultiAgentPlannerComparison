(define (problem BLOCKS-15-1)
(:domain  ma-blocksworld)
(:objects  r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - robot J B K A D H E N C F L M I O G - block)
(:INIT (HANDEMPTY r0) (HANDEMPTY r1) (HANDEMPTY r2) (HANDEMPTY r3) (HANDEMPTY r4) (HANDEMPTY r5) (HANDEMPTY r6) (HANDEMPTY r7) (HANDEMPTY r8) (HANDEMPTY r9) (HANDEMPTY r10) (CLEAR G) (CLEAR O) (ONTABLE I) (ONTABLE M) (ON G L) (ON L F) (ON F C)
 (ON C N) (ON N E) (ON E H) (ON H D) (ON D A) (ON A K) (ON K B) (ON B J)
 (ON J I) (ON O M))
(:goal (AND (ON D G) (ON G F) (ON F K) (ON K J) (ON J E) (ON E M) (ON M A)
            (ON A B) (ON B C) (ON C N) (ON N O) (ON O I) (ON I L) (ON L H)))
)
