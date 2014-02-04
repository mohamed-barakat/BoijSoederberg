#! @System TwistedChernPolynomial_IsVirtualHilbertPolynomial

LoadPackage( "BoijSoederberg" );

#! @Example
p := VirtualHilbertPolynomial( CohomologyTableOfHorrocksMumfordBundle( ) );
#! 1/12*t^4-25/12*t^2+2
ChernPolynomial( p );
#! ( 2 | 1-5*h+10*h^2 ) -> P^4
tcp := TwistedChernPolynomial( p );
#! [ ( 2 | 1-h+4*h^2 ) -> P^4, -2 ]
Twist( tcp[1], -2 );
#! ( 2 | 1-5*h+10*h^2 ) -> P^4
#! @EndExample
