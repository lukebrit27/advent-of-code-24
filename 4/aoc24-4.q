// AOC 4
i:read0`:input;
// pt 1
countx:{count raze {ss[x;"XMAS"],ss[x;"SAMX"]}@'x};
diagonals:{raze {{[x;t;i;n]x ./: (,') . r@\:where last[t]>=@[;i] r:@[;i;+;n]2#enlist t}[x;t;y] each t:til count x}[x]@'0 1};
r1:sum {[x;f] countx f x}[i]@'({x};flip; {1_diagonals x}; {1_diagonals reverse each x});
// pt 2
findA:{{a:1+ss[x;"MAS"],ss[x;"SAM"]}@'x}; // the 1+ is so the location of the "A" is returned which will be common to both diagonals
r2:{
    d:findA diagonals x;
    rd:findA diagonals reverse each x; 
    sum (in) . @[;1;{abs .[y;(til count y;1);-[;count[x]-1]]}[x]]{distinct raze @[;tc;reverse@']y ,'' ((2*c)#tc:til c:count x)+y}[x]@'(d;rd)
    }i;