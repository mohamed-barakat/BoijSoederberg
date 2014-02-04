#! @System Twist_IsRootSequence

LoadPackage( "BoijSoederberg" );

#! @Example
r := RootSequence( [ 2, 1 ] );
#! [ 2, 1 ]
c := VirtualCohomologyTable( r );;
BoijSoederbergDecomposition( Twist( c, 3 ) );
#! [ [ 1, [ -1, -2 ] ] ]
Twist( r, 3 );
#! [ -1, -2 ]
#! @EndExample