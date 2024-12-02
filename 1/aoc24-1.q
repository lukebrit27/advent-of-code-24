// AOC 1
i:flip "I"$((first;last)@\:)@' " " vs/: read0`:input;
// pt 1
r1:{sum abs (-) . asc@'x} i;
// pt 2
r2:{sum x*@[;x]d!sum each y=/:d:distinct x} . i;