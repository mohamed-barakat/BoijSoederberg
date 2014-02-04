#! @System IsIntegral_VirtualHilbertPolynomial

LoadPackage( "BoijSoederberg" );

#! @Example
C := VirtualCohomologyTable( RootSequence( [ 1, -1 ] ) );;
p := VirtualHilbertPolynomial( C );
#! 1/2*t^2-1/2
IsIntegral( C );
#! false
Value( p, 0 );
#! -1/2
#! @EndExample