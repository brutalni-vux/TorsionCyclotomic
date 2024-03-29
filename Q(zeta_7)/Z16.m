P<x> := PolynomialRing(Rationals());
K := NumberField(x^2 + 7);

//model for X1(16)
C := HyperellipticCurve(x*(x^2+1)*(x^2+2*x-1));
J := Jacobian(C);

Ct := QuadraticTwist(C, -7);
Jt := Jacobian(Ct);

"The rank of J1(16) over Q(sqrt(-7)) is at most:";
RankBound(Jt) + RankBound(J);
"";

O := MaximalOrder(K);

"11 factors into this many primes in Q(sqrt(-7)):";
#Factorization(11*O);
"We see that 11 fully splits in Q(sqrt(-7))";
"";

"23 factors into this many primes in Q(sqrt(-7)):";
#Factorization(23*O);
"We see that 23 fully splits in Q(sqrt(-7))";
"";

"By Katz's theorem, J_1(16)(Q(sqrt(-7)))_tors has at most this many elements:";
GCD(#BaseChange(J, GF(23)), #BaseChange(J, GF(11)));

"J_1(16)(Q)_tors has this many elements:";
#TorsionSubgroup(J);

"Hence, J_1(16)(Q) == J_1(16)(Q(sqrt(-7)))";
"";

G, m := TorsionSubgroup(J);

for i in [0..1] do
	for j in [0..9] do
		Jpt := m(i*G.1 + j*G.2);
		Jpt, Roots(ChangeRing(Jpt[1], K));
	end for;
end for;

"Clearly, no non-rational points over Q(sqrt(-7)) arise from Mumford representations";
"Hence, X_1(16)(Q) == X_1(16)(Q(sqrt(-7))) and all the points are cusps";
