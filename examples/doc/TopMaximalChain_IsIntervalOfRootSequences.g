#! @System TopMaximalChain_IsIntervalOfRootSequences

LoadPackage( "BoijSoederberg" );

#! @Example
L := RootSequence( [ 3, 2, 1 ] );
#! [ 3, 2, 1 ]
R := RootSequence( [ 5, 3, 1 ] );
#! [ 5, 3, 1 ]
I := IntervalOfRootSequences( L, R );
#! [ [ 3, 2, 1 ] .. [ 5, 3, 1 ] ]
TopMaximalChain( I );
#! [ [ 3, 2, 1 ], [ 4, 2, 1 ], [ 5, 2, 1 ], [ 5, 3, 1 ] ]
VectorSpaceOfVirtualCohomologyTables( I );
#! <A vector space with integral structure of dimension 4>
#! @EndExample