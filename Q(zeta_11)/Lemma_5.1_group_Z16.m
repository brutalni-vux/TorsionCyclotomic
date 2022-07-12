P<x> := PolynomialRing(Rationals());
K := NumberField(x^2 + 11);

//model for X1(16)
C := HyperellipticCurve(x*(x^2+1)*(x^2+2*x-1));
J := Jacobian(C);

Ct := QuadraticTwist(C, -11);
Jt := Jacobian(Ct);

"The rank of J1(16) over Q(sqrt(-11)) is at most:";
RankBound(Jt) + RankBound(J);
"";

O := MaximalOrder(K);
"3 factors into this many primes in Q(sqrt(-11)):";
#Factorization(3*O);
"We see that 3 fully splits in Q(sqrt(-11))";
"";

"By Katz's theorem, J_1(16)(Q(sqrt(-11)))_tors has at most this many elements:";
#BaseChange(J16, GF(3));

"J_1(16)(Q)_tors has this many elements:";
#TorsionSubgroup(J);

"Hence, J_1(16)(Q) == J_1(16)(Q(sqrt(-11)))";
"";

G, m := TorsionSubgroup(J);

for i in [0..1] do
	for j in [0..9] do
		Jpt := m(i*G.1 + j*G.2);
		Jpt, Roots(ChangeRing(Jpt[1], K));
	end for;
end for;

"Clearly, no non-rational points over Q(sqrt(-11)) arise from Mumford representations";
"Hence, X_1(16)(Q) == X_1(16)(Q(sqrt(-11))) and all the points are cusps";
