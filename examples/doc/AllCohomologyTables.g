#! @System AllCohomologyTables

LoadPackage( "BoijSoederberg" );

#! @Example
SetDisplayInterval( [ -7 .. 7 ] );
I := IntervalOfRootSequences( RootSequence( [ 4, 1, -1, -5 ] ),
RootSequence( [ 5, 1, -1, -4 ] ) );
#! [ [ 4, 1, -1, -5 ] .. [ 5, 1, -1, -4 ] ]
p := VirtualHilbertPolynomial( CohomologyTableOfHorrocksMumfordBundle( ) );
#! 1/12*t^4-25/12*t^2+2
A := AllCohomologyTables( I, p );
#! [ [ <A virtual cohomology table> ], [  ], [  ] ]
Display( A[1][1] );
#!  total:  100  35   2  10  10   5   0   2   0   5  10  10   2  35 100
#! --------------------------------------------------------------------
#!      4:  100  35   2   .   .   .   .   .   .   .   .   .   .   .   .
#!      3:    .   .   .  10  10   5   .   .   .   .   .   .   .   .   .
#!      2:    .   .   .   .   .   .   .   2   .   .   .   .   .   .   .
#!      1:    .   .   .   .   .   .   .   .   .   5  10  10   .   .   .
#!      0:    .   .   .   .   .   .   .   .   .   .   .   .   2  35 100
#! --------------------------------------------------------------------
#! degree:   -7  -6  -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7
#! @EndExample