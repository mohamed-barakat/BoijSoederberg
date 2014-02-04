#! @System MinimalIntegralRepresentation_IsVirtualCohomologyTable

LoadPackage( "BoijSoederberg" );



#! @Example
SetDisplayInterval( [ -4 .. 4 ] );
C := VirtualCohomologyTable( RootSequence( [ 1, -1 ] ) );;
Display( C );
#!  total:  15/2    4  3/2    0  1/2    0  3/2    4 15/2
#! -----------------------------------------------------
#!      2:  15/2    4  3/2    .    .    .    .    .    .
#!      1:     .    .    .    .  1/2    .    .    .    .
#!      0:     .    .    .    .    .    .  3/2    4 15/2
#! -----------------------------------------------------
#! degree:    -4   -3   -2   -1    0    1    2    3    4
M := MinimalIntegralRepresentation( C );;
Display( M );
#!  total:  15  8  3  0  1  0  3  8 15
#! -----------------------------------
#!      2:  15  8  3  .  .  .  .  .  .
#!      1:   .  .  .  .  1  .  .  .  .
#!      0:   .  .  .  .  .  .  3  8 15
#! -----------------------------------
#! degree:  -4 -3 -2 -1  0  1  2  3  4
M = MinimalIntegralRepresentation( 4 * C );
#! true
#! @EndExample