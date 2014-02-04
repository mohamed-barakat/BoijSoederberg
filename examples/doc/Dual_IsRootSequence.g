#! @System Dual_IsRootSequence

LoadPackage( "BoijSoederberg" );

#! @Example
R := RootSequence( [ 1, -1, -2 ] );
#! [ 1, -1, -2 ]
C := 3 * VirtualCohomologyTable( R );;
BoijSoederbergDecomposition( C );
#! [ [ 3, [ 1, -1, -2 ] ] ]
BoijSoederbergDecomposition( Dual( C ) );
#! [ [ 3, [ -2, -3, -5 ] ] ]
Dual( R );
#! [ -2, -3, -5 ]
#! @EndExample