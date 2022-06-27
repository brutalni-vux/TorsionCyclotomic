K := CyclotomicField(16);
L := CyclotomicField(8);
P<x> := PolynomialRing(L);

C := HyperellipticCurve(x*(x^2+1)*(x^2+2*x-1));
J := Jacobian(C);

Ct:=QuadraticTwist(C, L.1);
Jt:=Jacobian(Ct);

"The rank of J1(16) over Q(zeta_16) is at most:";
RankBound(Jt) + RankBound(J);

C16 := BaseChange(C, K);
pts := Points(C16 : Bound := 2);

J16 := Jacobian(C16);

O := MaximalOrder(K);
"17 factors into this many primes in Q(zeta_16):";
#Factorization(17*O);
"We see that 17 fully splits in Q(zeta_16)";

"By Katz's theorem, J_1(16)(Q(zeta_16))_tors has at most this many elements:";
#BaseChange(J16, GF(17));

order5 := [];

for i in [1 .. 14] do
    for j in [1 .. 14] do
        if HasOrder(((pts[i] - pts[2])+(pts[j] - pts[2])), 5) eq true then
            order5 := Append(order5, ((pts[i] - pts[2])+(pts[j] - pts[2])));
        end if;
    end for;
end for;

generators := [];

A, m := TwoTorsionSubgroup(J16);

for i in [1 .. 4] do
    generators := Append(generators, m(A.i));
end for;

generators := Append(generators, order5[1]);
generators := Append(generators, order5[3]);

//we will find torsion elements of J_1(16)(Q(zeta_16))
//and put them into this array
J16Torsion := [];

for i in [1 .. 2] do
    for j in [1 .. 2] do
        for k in [1 .. 2] do
            for l in [1 .. 2] do
                for p in [1 .. 5] do
                    for q in [1 .. 5] do
                        J16Torsion := Append(J16Torsion, i*generators[1] + j*generators[2] + k*generators[3] + l*generators[4] + p*generators[5] + q*generators[6]);
                    end for;
                end for;
            end for;
        end for;
    end for;
end for;       

"We have found this many elements on J_1(16)(Q(zeta_16))_tors:";
#J16Torsion;
"Hence, those are all of them";

//check that we have no duplicates
for i in [1 .. #J16Torsion] do
    for j in [i+1 .. #J16Torsion] do
        assert  not(J16Torsion[i] eq J16Torsion[j]);
    end for;
end for;

//checking Mumford representations
R:={};
for i in [1 .. #J16Torsion] do
    R := R join SequenceToSet(Roots(J16Torsion[i][1]));
end for;

"All possible x-coordinates for points on X1(16)(Q(zeta_16)) are:";
R;

"We found these points on X1(16)(Q(zeta_16)), covering for all possible x-coords:";
for pt in pts do
    pt, ",";
end for;

//x coordinates corresponding to cusps satisfy this equation
//(see Rabarison, Torsion et rang des courbes elliptiques definies sur les
//corps de nombres algebriques)

Q<t> := PolynomialRing(K);
p:=t*(t^4 - 1)*(t^2 + 2*t - 1)*(t^2 - 2*t - 1);

"Points with these x-coordinates are cusps:";
Roots(p);

"Hence, all points on X1(16)(Q(zeta_16)) are cusps.";
