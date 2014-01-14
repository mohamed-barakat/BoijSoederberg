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

#! Angenommen diese Tabelle käme tatsächlich von einem Vektorbündel <M>F</M>,
#! so wäre das 0-te Syzygienobjekt <M>S</M> der korrespondieren Tateauflösung
#! ein Unterobjekt von <M>\omega_{E} \otimes_{k} (H^{1}_{-1}(F) \oplus H^{2}_{-2}(F) )</M>
#! und ein Faktorobjekt von  <M>\omega_{E} \otimes_{k} (H^{3}_{-4}(F) \oplus H^{2}_{-3}(F) )</M>, d.h.
#! erzeugt in den Graden -4 + 5 = 1 und -3 + 5 = 2. Wir suchen nun einen Vertreter der <M>K_0</M> Klasse von <M>S</M>,
#! welcher mit der Beschreibung von <M>S</M> als Syzygienobjekt kompatibel ist:

#! @Example
k := K0ElementOfStableModuleCategory( p );
#! -6-23*x-24*x^2-11*x^3-2*x^4 -> P^4
#! @EndExample

#! Wir müssen die Koeffizienten von <M>x^4</M> und <M>x^3</M> zu 0 setzen:

#! @Example
pr := ElementOfGradedRelativeRing( List( [ 0 .. 5 ], i -> [ Binomial( 5, i ), i ] ), 5 );
#! 1+5*x+10*x^2+10*x^3+5*x^4+x^5 -> P^4
mx := ElementOfGradedRelativeRing( [ [ 1, - 1 ] ], 5 );
#! x^-1 -> P^4
k + 2 * mx * pr;
#! 2*x^-1+4-3*x-4*x^2-x^3 -> P^4
k := k + 2 * mx * pr + mx^2 * pr;
#! x^-2+7*x^-1+14+7*x+x^2 -> P^4
#! @EndExample

#! Hierbei muss es sich um die Hilbertreihe von <M>S</M> handeln, da jeder weitere Vertreter
#! mit Koeffizienten <M>a_i = 0</M> für <M>i > 2</M> und <M>a_2 = 1</M> zwangsläufig einen nicht triviale Koeffizienten
#! <M>a_{-3}</M> hätte, im Widerspruch zur oben beschriebenen Einbettung von <M>S</M>.
#! Es stellt sich als die Frage, ob ein <M>E</M>-Modul mit diesen Eigenschaften existiert:
#! 

