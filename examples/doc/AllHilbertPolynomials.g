#! @System AllHilbertPolynomials

LoadPackage( "BoijSoederberg" );

#! @Example
HM := CohomologyTableOfHorrocksMumfordBundle( );;
I := IntervalSpannedByRepresentation( HM );
#! [ [ 4, 1, -1, -6 ] .. [ 6, 1, -1, -4 ] ]
AllHilbertPolynomials( I, 2 );
#! [ [ [ [ ( 2 | 1-h+4*h^2 ) -> P^4, -2 ], 1/12*t^4-25/12*t^2+2 ] ], [  ], [  ] ]
AllHilbertPolynomials( I, 2, false );
#! [ [ 1/12*t^4+1/6*t^3-25/12*t^2-1/6*t+2, 1/12*t^4-37/12*t^2+3,
#! 1/12*t^4-1/6*t^3-25/12*t^2+1/6*t+2, 1/12*t^4-25/12*t^2+2 ], [  ], [  ] ]
#! @EndExample