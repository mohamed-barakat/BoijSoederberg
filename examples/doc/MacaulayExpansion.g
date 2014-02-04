#! @System MacaulayExpansion

LoadPackage( "BoijSoederberg" );

#! @Example
MacaulayExpansion( 5, 2 );
#! [ [ 3, 2 ], [ 2, 1 ] ]
Binomial( 3, 2 ) + Binomial( 2, 1 );
#! 5
MacaulayExpansion( 5, 1 );
#! [ [ 5, 1 ] ]
MacaulayExpansion( 5, 3 );
#! [ [ 4, 3 ], [ 2, 2 ] ]
MacaulayExpansion( 5, 4 );
#! [ [ 5, 4 ] ]
MacaulayExpansion( 5, 5 );
#! [ [ 5, 5 ], [ 4, 4 ], [ 3, 3 ], [ 2, 2 ], [ 1, 1 ] ]
#! @EndExample