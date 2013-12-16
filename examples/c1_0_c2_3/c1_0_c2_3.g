#AutoDocWorksheet( "./c1_0_c2_3.g" :  OutputFolder := "c1_0_c2_3" );

#! @Title Beispiel
#! @Author Sebastian Posur

#! @Chapter Beispiel

#! Wir konstruieren eine virtuelle Kohomologietabelle zu den Chernklassen
#! c_1 = 0 und c_2 = 3 und dem Rang 2.

#! @Section Beispiel

#! @Example
LoadPackage( "Boij" );

h := VariableForChernPolynomial( );
#! h
c := CreateChernPolynomial( 2, 1 + 3 * h^2, 4 );
#! ( 2 | 1+3*h^2 ) -> P^4
p := VirtualHilbertPolynomial( c );
#! 1/12*t^4+5/6*t^3+17/12*t^2-10/3*t-6
I := IntervalOfMinimalAmbientSpace( p );
#! [ [ 1, -2, -4, -7 ] .. [ 2, -1, -3, -6 ] ]
A := AllCohomologyTables( I, p );
#! [ [ <A virtual cohomology table> ], [  ], [  ] ]
SetDisplayInterval( [ -10 .. 5 ] );
a := A[ 1 ][ 1 ];
#! <A virtual cohomology table>
Display( a );
#! total:  169  78  26   1   7   6   2   1   1   2   6   7   1  26  78 169
#!------------------------------------------------------------------------
#!     4:  169  78  26   1   .   .   .   .   .   .   .   .   .   .   .   .
#!     3:    .   .   .   .   7   6   2   .   .   .   .   .   .   .   .   .
#!     2:    .   .   .   .   .   .   .   1   1   .   .   .   .   .   .   .
#!     1:    .   .   .   .   .   .   .   .   .   2   6   7   .   .   .   .
#!     0:    .   .   .   .   .   .   .   .   .   .   .   .   1  26  78 169
#!------------------------------------------------------------------------
#!degree:  -10  -9  -8  -7  -6  -5  -4  -3  -2  -1   0   1   2   3   4   5
BoijSoederbergDecomposition( a );
#! [ [ 1/9, [ 2, -1, -3, -6 ] ], [ 22/27, [ 2, -1, -3, -7 ] ], [ 4/27, [ 2, -1, -4, -7 ] ], [ 22/27, [ 2, -2, -4, -7 ] ], [ 1/9, [ 1, -2, -4, -7 ] ] ]
#! @EndExample

#! Angenommen diese Tabelle käme tatsächlich von einem Vektorbündel <M>\mathscr{F}</M>,
#! so wäre das 0-te Syzygienobjekt der korrespondieren Tateauflösung
#! ein Unterobjekt von <M>\omega_{E} \otimes_{k} H^{1}(\mathscr{F}(-1)) \oplus H^{2} \otimes_{k} (\mathscr{F}(-2))</M>.