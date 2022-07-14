P<x> := PolynomialRing(Rationals());
K := NumberField(x^2 + 11);

//model for X1(2, 12)
E := EllipticCurve([0, -1, 0, 1, 0]);

"Rank of X1(2, 12)(Q) is:";
Rank(E);
"";

"Torsion subgroup of X1(2, 12)(Q) is:";
TorsionSubgroup(E);
"";

"Rank of X1(2, 12)(Q(sqrt(-11))) is:";
Rank(BaseChange(E, K));
"";

"Torsion subgroup of X1(2, 12)(Q(sqrt(-11))) is:";
TorsionSubgroup(BaseChange(E, K));
"";

"Clearly, the groups are equal."
