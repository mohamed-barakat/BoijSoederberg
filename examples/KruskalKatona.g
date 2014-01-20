LoadPackage( "GradedRingForHomalg" );;

LoadPackage( "GradedModules" );;

R := HomalgFieldOfRationalsInDefaultCAS( ) * "x0..x4";;

S := GradedRing( R );;

A := KoszulDualRing( S, "e0..e4" );;

#! lexsegment ideal
mat := HomalgMatrix( "[ e0, e1, e2, e3, e4 ]", 1, 5, A );
# mat := HomalgMatrix( "[ e3*e4, e2*e4, e2*e3, e1*e4 ]", 1, 5, A );


phi := GradedMap( mat, "free", "free", "left", A );;

M := Cokernel( phi );

T := TateResolution( M, -5, 5 );

B := BettiTable( T );

Display( B );




