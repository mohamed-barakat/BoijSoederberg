#! @System TopMaximalHilbertChain_IsIntervalOfRootSequences

LoadPackage( "BoijSoederberg" );

#! @Example
L := RootSequence( [ 3, 2, 1 ] );
#! [ 3, 2, 1 ]
R := RootSequence( [ 5, 3, 1 ] );
#! [ 5, 3, 1 ]
I := IntervalOfRootSequences( L, R );
#! [ [ 3, 2, 1 ] .. [ 5, 3, 1 ] ]
TopMaximalHilbertChain( I );
#! [ [ 4, 2, 1 ], [ 5, 2, 1 ], [ 5, 3, 1 ] ]
VectorSpaceOfVirtualHilbertPolynomials( I );
#! <A vector space with integral structure of dimension 3>
#! @EndExample