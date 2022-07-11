//model for X1(14)
E := EllipticCurve([1, 0, 1, -1, 0]);
K := CyclotomicField(9);
L := Subfields(K)[3][1];

//check that L = Q(zeta_9)+
assert Degree(L) eq 3;

"The rank of X1(14)(Q) is:";
Rank(E);
"";

"The torsion of X1(14)(Q) is:";
TorsionSubgroup(E);
"";

F := BaseChange(E, K);

E1 := BaseChange(E, L);
E2 := QuadraticTwist(E1, -3);

"The rank of X1(14)(Q(zeta_9)) is:";
Rank(E1) + Rank(E2);
"";

"The torsion of X1(14)(Q(zeta_9)) is:";
TorsionSubgroup(F);
"";
"Hence, X1(14)(Q) = X1(14)(Q(zeta_9)) and all points are rational cusps";
