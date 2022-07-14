//the only j-invariant allowing a rational 19-isogeny
E := EllipticCurveWithjInvariant(-2^15 * 3^3);
K := CyclotomicField(27);

f19 := DivisionPolynomial(E, 19);
ireds := Factorization(f19);

"19th division polynomial has this many irreducible factors over Q:";
#ireds;
"";

"These are their degrees:";
Degree(ireds[1][1]);
Degree(ireds[2][1]);
"";

"Hence, we only need to check the first one for roots over Q(zeta_27)";
"Those roots are (none):";

p1 := ChangeRing(ireds[1][1], K);
Roots(p1);
