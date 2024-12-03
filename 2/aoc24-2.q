// AOC 2
i:value@'read0`:input;
// pt 1
safe:{((all@'0<d)|all@'0>d)&all@'(ad<4)&0<ad:abs d:1_'deltas@'x};
r1:sum safe i;
// pt 2
safe2:{
    r:where not s:safe x;
    @[s;;:;1b]r where{any safe x c except/: c:til count x}@'x r
    };
r2:sum safe2 i;