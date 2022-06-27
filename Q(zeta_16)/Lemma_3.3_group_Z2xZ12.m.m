K := CyclotomicField(16);
L := CyclotomicField(8);
M := CyclotomicField(4);
P<x> := PolynomialRing(K);

//model for X1(2, 12)
E := EllipticCurve([0, -1, 0, 1, 0]);
E := BaseChange(E, M);
"Rank of X1(2, 12)(Q(zeta_4)) is:";
Rank(E);

"Torsion subgroup of X1(2, 12)(Q(zeta_4)) is:";
TorsionSubgroup(E);

E:=BaseChange(E, L);
"Rank of X1(2, 12)(Q(zeta_16)) is:";
Rank(E) + Rank(QuadraticTwist(E, L.1));

"Torsion subgroup of X1(2, 12)(Q(zeta_16)) is:";
TorsionSubgroup(BaseChange(E, K));

"Clearly, the group structures are equal."
