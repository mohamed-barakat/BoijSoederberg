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

f := function( i, j ) return T[ [ i, 2 * j ] ]; end;

M := TopMaximalChain( IntervalOfRootSequences( RootSequence( [ 2, 0, -1, -3 ] ), RootSequence( [ 3, 1, 0, -2 ] )  ) );

M2 := TopMaximalChain( IntervalOfRootSequences( RootSequence( [ -4, -5, -6, -9 ] ), RootSequence( [ 9, 8, 7, 5 ] )  ) );

# A := AllCohomologyTables( I, VirtualHilbertPolynomial( T ) )[ 1 ];

