// AOC 3
i:raze read0`:input;
// utils
findmul:{raze ss[x] each raze (,/:\:) . ("mul("{x,y,","}/:;,\:[;")"]) @\: ("[0-9]";"[0-9][0-9]";"[0-9][0-9][0-9]")};
getmul:{[x;mi]mi{(y;1+z-y) sublist x}[x]' bi (bi:ss[x;")"]) binr mi};
summul:{sum (*) .' {value trim ?[x in .Q.n;x;" "]}@'x};
// pt 1
r1:{summul getmul[x] findmul x} i;
// pt 2
r2:{summul getmul[x] mi where (<=) . (ss[x;"don't"];ss[x;"do[^n]"]) {x x bin y}\: mi:findmul x} i;