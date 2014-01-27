LoadPackage( "BoijSoederberg" );

R1 := RootSequence( [ 6, 1, -1, -4 ] );

R2 := RootSequence( [ 5, 1, -1, -4 ] );

R3 := RootSequence( [ 5, 1, -1, -5 ] );

R4 := RootSequence( [ 4, 1, -1, -5 ] );

R5 := RootSequence( [ 4, 1, -1, -6 ] );

T := VirtualCohomologyTable( [ [ 2/9, R1 ], [ 7/45, R2 ], [ 56/45, R3 ], [ 7/45, R4 ], [ 14/63, R5 ] ] );

# this table is the pullback of T along a 2:1 map pushed forward along the same map
T2 := T + 10*Twist( T, -1 ) +  5 * Twist( T, -2 );