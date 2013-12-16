LoadPackage( "Boij" );

L := RootSequence( [ 0, 1, 2, 3, 4 ] );

R := RootSequence( [ 3, 4, 5, 6, 7 ] );

I := IntervalOfRootSequences( L, R );

A := AllHilbertPolynomials( I, 2 )[ 1 ];

a := A[ 8 ];

p := a[ 2 ];