#! @System RightBoundary_IsIntervalOfRootSequences

LoadPackage( "BoijSoederberg" );

#! @Example
L := RootSequence( [ 3, 2, 1 ] );
#! [ 3, 2, 1 ]
R := RootSequence( [ 5, 3, 1 ] );
#! [ 5, 3, 1 ]
I := IntervalOfRootSequences( L, R );
#! [ [ 3, 2, 1 ] .. [ 5, 3, 1 ] ]
RightBoundary( I );
#! [ 5, 3, 1 ]
IsIdenticalObj( RightBoundary( I ), R );
#! true
#! @EndExample