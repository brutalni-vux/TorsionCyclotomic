P<x> := PolynomialRing(Rationals());
K := NumberField(x^2 + 7);

//model for X1(2, 10)
E := EllipticCurve([0, 1, 0, -1, 0]);

"Rank of X1(2, 10)(Q) is:";
Rank(E);

"Torsion subgroup of X1(2, 10)(Q) is:";
TorsionSubgroup(E);

E1 := BaseChange(E, K);

"Rank of X1(2, 10)(Q(sqrt(-7))) is:";
Rank(E1);

"Torsion subgroup of X1(2, 10)(Q(sqrt(-7))) is:";
TorsionSubgroup(E1);

"Clearly, the groups are equal."
