K := CyclotomicField(9);
L := Subfields(K)[3][1];

//check that L == Q(zeta_9)+
assert Degree(L) eq 3;

P<x> := PolynomialRing(L);

C := HyperellipticCurve(x^6 + 4*x^5 + 6*x^4 + 2*x^3 + x^2 + 2*x + 1);
J := Jacobian(C);


"The rank of J1(13)(Q(zeta_9)+) is at most:";
RankBound(J);
"";

"Two-torsion subgroup of J1(13)(Q(zeta_9)+) is:";
TwoTorsionSubgroup(J);
"";

O := MaximalOrder(L);

"19 factors into this many primes in Q(zeta_9)+:";
#Factorization(19*O);
"We see that 19 fully splits in Q(zeta_9)+";
"";

"71 factors into this many primes in Q(zeta_9)+:";
#Factorization(71*O);
"We see that 71 fully splits in Q(zeta_9)+";
"";

"By Katz's theorem, J_1(13)(Q(zeta_16))_tors has at most this many elements:";
Gcd(#BaseChange(J, GF(19)), #BaseChange(J, GF(71)));
"";

Cq := ChangeRing(C, RationalField());

pts := Points(Cq: Bound := 4);
P := pts[3] - pts[2];

"J_1(13)(Q)_tors has at least this many elements:";
Order(P);
"";

assert Order(P) eq Gcd(#BaseChange(J, GF(19)), #BaseChange(J, GF(71)));

"Hence, J_1(13)(Q(zeta_9)+) == J_1(13)(Q)";

"All possible x-coordinates of points on X1(13)(Q(zeta_9)+) are";
"roots of these polynomials from Mumford representations:";

for i in [1..19] do
    (i * P)[1];
end for;

"Clearly, all of them have rational roots 0 or -1.";
"They give only cuspidal rational points.";
