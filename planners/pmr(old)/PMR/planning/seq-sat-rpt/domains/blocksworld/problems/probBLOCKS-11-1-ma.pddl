(define (problem BLOCKS-11-1)
(:domain  ma-blocksworld)
(:objects  r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - robot B C E A H K I G D F J - block)
(:INIT (HANDEMPTY r0) (HANDEMPTY r1) (HANDEMPTY r2) (HANDEMPTY r3) (HANDEMPTY r4) (HANDEMPTY r5) (HANDEMPTY r6) (HANDEMPTY r7) (HANDEMPTY r8) (HANDEMPTY r9) (HANDEMPTY r10) (CLEAR J) (CLEAR F) (CLEAR D) (CLEAR G) (ONTABLE I) (ONTABLE K)
 (ONTABLE H) (ONTABLE A) (ON J I) (ON F E) (ON E K) (ON D C) (ON C H) (ON G B)
 (ON B A))
(:goal (AND (ON B D) (ON D J) (ON J K) (ON K H) (ON H A) (ON A C) (ON C F)
            (ON F G) (ON G I) (ON I E)))
)
