#! @System K0ElementLift

LoadPackage( "BoijSoederberg" );

#! @Example
SetDisplayInterval( [ -8 .. 4 ] );
c := CohomologyTableOfStructureSheafOfProjectiveSpace( 3 );;
Display( c );
#!  total:  35 20 10  4  1  0  0  0  1  4 10 20 35
#! -----------------------------------------------
#!      3:  35 20 10  4  1  .  .  .  .  .  .  .  .
#!      2:   .  .  .  .  .  .  .  .  .  .  .  .  .
#!      1:   .  .  .  .  .  .  .  .  .  .  .  .  .
#!      0:   .  .  .  .  .  .  .  .  1  4 10 20 35
#! -----------------------------------------------
#! degree:  -8 -7 -6 -5 -4 -3 -2 -1  0  1  2  3  4
K0ElementLift( c, 0 );
#! 1 -> P^3
K0ElementLift( c, 1 );
#! 4*x+6*x^2+4*x^3+x^4 -> P^3
#! @EndExample