#! @System Supremum

LoadPackage( "BoijSoederberg" );

#! @Example
r1 := RootSequence( [ 4, 1 ] );
#! [ 4, 1 ]
r2 := RootSequence( [ 3, 2 ] );
#! [ 3, 2 ]
Supremum( r1, r2 );
#! [ 4, 2 ]
#! @EndExample