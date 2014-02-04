#! @System Twist_IsVirtualCohomologyTable

LoadPackage( "BoijSoederberg" );



#! @Example
SetDisplayInterval( [ -4 .. 4 ] );
c := CohomologyTableOfStructureSheafOfProjectiveSpace( 3 );;
Display( c );
#!  total:   1  0  0  0  1  4 10 20 35
#! -----------------------------------
#!      3:   1  .  .  .  .  .  .  .  .
#!      2:   .  .  .  .  .  .  .  .  .
#!      1:   .  .  .  .  .  .  .  .  .
#!      0:   .  .  .  .  1  4 10 20 35
#! -----------------------------------
#! degree:  -4 -3 -2 -1  0  1  2  3  4
Display( Twist( c, -4 ) );
#!  total:  35 20 10  4  1  0  0  0  1
#! -----------------------------------
#!      3:  35 20 10  4  1  .  .  .  .
#!      2:   .  .  .  .  .  .  .  .  .
#!      1:   .  .  .  .  .  .  .  .  .
#!      0:   .  .  .  .  .  .  .  .  1
#! -----------------------------------
#! degree:  -4 -3 -2 -1  0  1  2  3  4
#! @EndExample