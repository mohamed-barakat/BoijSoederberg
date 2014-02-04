#! @System IsPointSymmetric_VirtualHilbertPolynomial

LoadPackage( "BoijSoederberg" );


#! @Example
SetDisplayInterval( [ -5 .. 5 ] );
HM := CohomologyTableOfHorrocksMumfordBundle( );;
Display( HM );
#!  total:   6 10 10  5  0  2  0  5 10 10  6
#! -----------------------------------------
#!      4:   4  .  .  .  .  .  .  .  .  .  .
#!      3:   2 10 10  5  .  .  .  .  .  .  .
#!      2:   .  .  .  .  .  2  .  .  .  .  .
#!      1:   .  .  .  .  .  .  .  5 10 10  2
#!      0:   .  .  .  .  .  .  .  .  .  .  4
#! -----------------------------------------
#! degree:  -5 -4 -3 -2 -1  0  1  2  3  4  5
IsPointSymmetric( HM );
#! true
Display( Twist( HM, 1 ) );
#!  total:  10 10  5  0  2  0  5 10 10  6 35
#! -----------------------------------------
#!      4:   .  .  .  .  .  .  .  .  .  .  .
#!      3:  10 10  5  .  .  .  .  .  .  .  .
#!      2:   .  .  .  .  2  .  .  .  .  .  .
#!      1:   .  .  .  .  .  .  5 10 10  2  .
#!      0:   .  .  .  .  .  .  .  .  .  4 35
#! -----------------------------------------
#! degree:  -5 -4 -3 -2 -1  0  1  2  3  4  5
IsPointSymmetric( Twist( HM, 1 ) );
#! false
#! @EndExample