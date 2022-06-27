K := CyclotomicField(16);
L := CyclotomicField(8);

//model for X1(4, 8)
E := EllipticCurve([0, 0, 0, -1, 0]);

F := BaseChange(E, L);
"Rank of X1(4, 8)(Q(zeta_8)) is:";
Rank(F);

"Rank of X1(4, 8)(Q(zeta_16)) is:";
Rank(F) + Rank(QuadraticTwist(F, L.1));

"Torsion subgroup of X1(4, 8)(Q(zeta_8)) is:";
TorsionSubgroup(F);

"Torsion subgroup of X1(4, 8)(Q(zeta_16)) is:";
TorsionSubgroup(BaseChange(F, K));

"Clearly, the group structures are equal."
