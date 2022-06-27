K:=CyclotomicField(16);
L:=CyclotomicField(8);
P<x>:=PolynomialRing(K);

E := EllipticCurve([1, 1, 1, 0, 0]);
"Rank of X1(15)(Q) is:";
Rank(E);

"Torsion subgroup of X1(15)(Q) is:";
TorsionSubgroup(E);

E:=BaseChange(E, L);
"Rank of X1(15)(Q(zeta_16)) is:";
Rank(E) + Rank(QuadraticTwist(E, L.1));

"Torsion subgroup of X1(15)(Q(zeta_16)) is:";
TorsionSubgroup(BaseChange(E, K));

"Clearly, the group structures are equal."
