K := CyclotomicField(16);
L := CyclotomicField(8);

P<x> := PolynomialRing(K);

C := HyperellipticCurve(x^6 + 4*x^5 + 6*x^4 + 2*x^3 + x^2 + 2*x + 1);
J := Jacobian(C);

C1 := ChangeRing(C, L);
C2 := QuadraticTwist(C1, L.1);

"The rank of J1(13)(Q(zeta_16)) is at most:";
RankBound(Jacobian(C1)) + RankBound(Jacobian(C2));

"Two-torsion subgroup of J1(13)(Q(zeta_16)) is:";
TwoTorsionSubgroup(J);

O := MaximalOrder(K);

"17 factors into this many primes in Q(zeta_16):";
#Factorization(17*O);
"We see that 17 fully splits in Q(zeta_16)";

"41 factors into this many primes in Q(zeta_16):";
#Factorization(41*O);
"We see that 41 has inertia degree 2 in Q(zeta_16)";

"By Katz's theorem, J_1(13)(Q(zeta_16))_tors has at most this many elements:";
Gcd(#BaseChange(J, GF(17)), #BaseChange(J, GF(41*41)));

Cq := ChangeRing(C, RationalField());

pts := Points(Cq: Bound := 4);
P := pts[3] - pts[2];

"J_1(13)(Q)_tors has at least this many elements:";
Order(P);

"Hence, J_1(13)(Q(zeta_16)) == J_1(13)(Q)";

"All possible x-coordinates of points on X1(13)(Q(zeta_16)) are";
"roots of these polynomials from Mumford representations:";

for i in [1..19] do
    (i * P)[1];
end for;

"Clearly, all of them have rational roots 0 or -1.";
"They give only cuspidal rational points.";
