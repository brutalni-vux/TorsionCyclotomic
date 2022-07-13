K := CyclotomicField(7);
P<x> := PolynomialRing(K);

//model for X1(2, 12)
E := EllipticCurve([0, -1, 0, 1, 0]);

"Rank of X1(2, 12)(Q) is:";
Rank(E);

"Torsion subgroup of X1(2, 12)(Q) is:";
TorsionSubgroup(E);

E := BaseChange(E, K);

"Rank of X1(2, 12)(Q(zeta_7)) is:";
Rank(E);

"Torsion subgroup of X1(2, 12)(Q(zeta_7)) is:";
TorsionSubgroup(E);

"Clearly, the groups are equal."
