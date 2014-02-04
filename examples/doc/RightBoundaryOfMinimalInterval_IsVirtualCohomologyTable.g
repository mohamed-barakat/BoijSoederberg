#! @System RightBoundaryOfMinimalInterval_IsVirtualCohomologyTable

LoadPackage( "BoijSoederberg" );



#! @Example
SetDisplayInterval( [ -6 .. 7 ] );
HM := CohomologyTableOfHorrocksMumfordBundle( );;
Display( HM );
#!  total:   35   6  10  10   5   0   2   0   5  10  10   6  35 100
#! ----------------------------------------------------------------
#!      4:   35   4   .   .   .   .   .   .   .   .   .   .   .   .
#!      3:    .   2  10  10   5   .   .   .   .   .   .   .   .   .
#!      2:    .   .   .   .   .   .   2   .   .   .   .   .   .   .
#!      1:    .   .   .   .   .   .   .   .   5  10  10   2   .   .
#!      0:    .   .   .   .   .   .   .   .   .   .   .   4  35 100
#! ----------------------------------------------------------------
#! degree:   -6  -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7
RightBoundaryOfMinimalInterval( HM );
#! [ 6, 1, -1, -4 ]
#! @EndExample