E := EllipticCurve([1, -1, 0, -1077, 13877]);
p:=DivisionPolynomial(E,7);
Factorization(ChangeRing(p, CyclotomicField(7)));

E := EllipticCurve([1, -1, 0, -852, 19664]);
p:=DivisionPolynomial(E,7);
Factorization(ChangeRing(p, CyclotomicField(7)));

E := EllipticCurve([1, -1, 0, -42, -100]);
p:=DivisionPolynomial(E,7);
Factorization(ChangeRing(p, CyclotomicField(7)));

E := EllipticCurve([1, -1, 0, 3, -1]);
p:=DivisionPolynomial(E,7);
Factorization(ChangeRing(p, CyclotomicField(7)));
