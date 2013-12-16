LoadPackage( "Boij" );

R1 := RootSequence( [ 6, 1, -1, -4 ] );

R2 := RootSequence( [ 5, 1, -1, -4 ] );

R3 := RootSequence( [ 5, 1, -1, -5 ] );

R4 := RootSequence( [ 4, 1, -1, -5 ] );

R5 := RootSequence( [ 4, 1, -1, -6 ] );

T := VirtualCohomologyTable( [ [ 2/9, R1 ], [ 7/45, R2 ], [ 56/45, R3 ], [ 7/45, R4 ], [ 14/63, R5 ] ] );

SetDisplayInterval( [ -10 .. 10 ] );

Display( T );

I := IntervalOfRootSequences( R5, R1 );

A := AllCohomologyTables( I, VirtualHilbertPolynomial( T ) )[ 1 ];

