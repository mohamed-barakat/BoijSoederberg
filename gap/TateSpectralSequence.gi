#################################
##
## Representations
##
#################################

DeclareRepresentation( "IsVirtualTateSpectralSequenceRep",
                       IsVirtualTateSpectralSequence and IsAttributeStoringRep,
                       [ ] );

DeclareRepresentation( "IsVirtualTateSpectralSequencePageRep",
                       IsVirtualTateSpectralSequencePage and IsAttributeStoringRep,
                       [ "ListOfEntries" ] );                       
                       
##################################
##
## Family and Type
##
##################################

BindGlobal( "TheTypeVirtualTateSpectralSequence",
  NewType( TheBoijSoederbergFamily,
           IsVirtualTateSpectralSequenceRep ) );

BindGlobal( "TheTypeVirtualTateSpectralSequencePage",
  NewType( TheBoijSoederbergFamily,
           IsVirtualTateSpectralSequencePageRep ) );

##################################
##
## Properties
##
##################################

##           
InstallMethod( IsZero,
               "for a virtual Tate spectral sequence page",
               [ IsVirtualTateSpectralSequencePage ],

  function( virtual_tate_spectral_sequence_page )

    return virtual_tate_spectral_sequence_page!.ListOfEntries = [ ] or
           ( not false in List( virtual_tate_spectral_sequence_page!.ListOfEntries, entry -> IsZero( entry[3] ) ) );
               
end );

##
InstallMethod( IsZero,
               "for a virtual Tate spectral sequence",
               [ IsVirtualTateSpectralSequence ],

  function( virtual_tate_spectral_sequence )

    return not false in List( virtual_tate_spectral_sequence!.Pages, IsZero );
  
end );

##################################
##
## Attributes
##
##################################
           
##
InstallMethod( BettiTable,
               "for a virtual Tate spectral sequence page",
               [ IsVirtualTateSpectralSequencePageRep ],

  function( virtual_tate_spectral_sequence_page )
    local n, betti_table;

    n := Dimension( virtual_tate_spectral_sequence_page );

    betti_table := HomalgBettiTable(
      Reversed(
        List( [ 0 .. n ], i -> List( BOIJ_SOEDERBERG.CategoryOfVectorSpacesOfVirtualCohomologyTables!.display_interval,
        D -> virtual_tate_spectral_sequence_page[ [ i, D ] ] ) )
      ), [ 0 .. n ], BOIJ_SOEDERBERG.CategoryOfVectorSpacesOfVirtualCohomologyTables!.display_interval, virtual_tate_spectral_sequence_page
    );

    betti_table!.reverse := true;

    return betti_table;

end );
           
##################################
##
## Operators
##
##################################

##
InstallMethod( \[\],
               "for a virtual Tate spectral sequence page and a list",
               [ IsVirtualTateSpectralSequencePageRep, IsList ],

  function( virtual_tate_spectral_sequence_page, list )
    local p, q, entry;

    p := list[1];

    q := list[2];

    entry := Filtered( virtual_tate_spectral_sequence_page!.ListOfEntries, i -> ( i[1] = p ) and ( i[2] = q ) );

    if entry = [ ] then

      return 0;

    else

      return Sum( entry, i -> i[3] );

    fi;

end );

##
InstallMethod( \[\],
               "for a virtual Tate spectral sequence and a list",
               [ IsVirtualTateSpectralSequenceRep, IsList ],

  function( virtual_tate_spectral_sequence, list )
    local p, q, r, entry;

    p := list[1];

    q := list[2];

    r := list[3];

    if r < 1 then

      Error( "invalid page\n" );
    
    fi;

    if r = 1 then

      return FirstPage( virtual_tate_spectral_sequence )[ [ p, q ] ];
      
    fi;

    return SpectralSequencePage( virtual_tate_spectral_sequence, r )[ [ p, q ] ];
  
end );

##
InstallMethod( SpectralSequencePage,
               "for a virtual Tate spectral sequence and an integer",
               [ IsVirtualTateSpectralSequence, IsInt ],

  function( virtual_tate_spectral_sequence, page )

    return virtual_tate_spectral_sequence!.Pages[ page ];
  
end );

##
InstallMethod( \+,
              "for a pair of virtual Tate spectral sequence pages",
              [ IsVirtualTateSpectralSequencePageRep, IsVirtualTateSpectralSequencePageRep ],

  function( virtual_tate_spectral_sequence_page1, virtual_tate_spectral_sequence_page2 )
    local dimension;

    dimension := Dimension( virtual_tate_spectral_sequence_page1 );

    if dimension <> Dimension( virtual_tate_spectral_sequence_page2 ) then

      Error( "dimensions are not equal\n" );
    
    fi;

    return VirtualTateSpectralSequencePage(
      Concatenation( virtual_tate_spectral_sequence_page1!.ListOfEntries,
                     virtual_tate_spectral_sequence_page2!.ListOfEntries
                   ),
      dimension
    );
  
end );

##
InstallMethod( \+,
               "for a pair of virtual Tate spectral sequences",
               [ IsVirtualTateSpectralSequenceRep, IsVirtualTateSpectralSequenceRep ],

  function( virtual_tate_spectral_sequence1, virtual_tate_spectral_sequence2 )
    local list_of_pages, pages1, pages2, length;

      pages1 := virtual_tate_spectral_sequence1!.Pages;

      pages2 := virtual_tate_spectral_sequence2!.Pages;

      length := Length( pages1 );

      if Dimension( virtual_tate_spectral_sequence1 ) <> Dimension( virtual_tate_spectral_sequence2 ) or length <> Length( pages2 ) then

        Error( "incompatible spectral sequences\n" );
        
      fi;

      list_of_pages := List( [ 1 .. length ], i -> pages1[ i ] + pages2[ i ] );
    
      return VirtualTateSpectralSequence( list_of_pages );
  
end );

##
InstallMethod( AdditiveInverse,
               "for a virtual Tate spectral sequences",
               [ IsVirtualTateSpectralSequenceRep ],

  function( virtual_tate_spectral_sequence )
    local list_of_pages, pages1, pages2, length;

      list_of_pages := virtual_tate_spectral_sequence!.Pages;

      list_of_pages := List( list_of_pages, l -> -l );

      return VirtualTateSpectralSequence( list_of_pages );

end );

##
InstallMethod( AdditiveInverse,
               "for a virtual Tate spectral sequence page",
               [ IsVirtualTateSpectralSequencePageRep ],

  function( virtual_tate_spectral_sequence_page )
    local list_of_entries;

    list_of_entries := virtual_tate_spectral_sequence_page!.ListOfEntries;

    return VirtualTateSpectralSequencePage(
             List( list_of_entries, entry -> [ entry[1], entry[2], -entry[3] ] ),
             Dimension( virtual_tate_spectral_sequence_page )
           );

end );

##
InstallMethod( \*,
               "for a virtual Tate spectral sequence page and a rational",
               [ IsVirtualTateSpectralSequencePageRep, IsRat ],

  function( virtual_tate_spectral_sequence_page, rational )
    local list_of_entries;

    list_of_entries := virtual_tate_spectral_sequence_page!.ListOfEntries;

    return VirtualTateSpectralSequencePage(
             List( list_of_entries, entry -> [ entry[1], entry[2], rational * entry[3] ] ),
             Dimension( virtual_tate_spectral_sequence_page )
           );
  
end );

##
InstallMethod( \*,
               "for a virtual Tate spectral sequence page and a rational",
               [ IsRat, IsVirtualTateSpectralSequencePageRep ],

  function( rational, virtual_tate_spectral_sequence_page )

    return virtual_tate_spectral_sequence_page * rational;
  
end );           


InstallMethod( SpectralSequenceOfHorrocksMumfordBundle,
                  [ ],

  function( )
    local first_page, second_page;
    
    first_page := CohomologyTableOfHorrocksMumfordBundle( );
    
    second_page := VirtualTateSpectralSequencePage(
      [
        [ 4, -6, ElementOfGradedRelativeRing( [ [ 20, -3 ], [ 35, -2 ], [ 15, -1 ] ], 5 ) ],

        [ 4, -7, ElementOfGradedRelativeRing( [ [ 2, -5 ] ], 5 ) ],

        [ 4, -5, ElementOfGradedRelativeRing( [ [ 4, 0 ] ], 5 ) ],

        [ 3, -4, ElementOfGradedRelativeRing( [ [ 20, -3 ], [ 35, -2 ], [ 15, -1 ] ], 5 ) ],

        [ 3, -5, ElementOfGradedRelativeRing( [ [ 2, -5 ] ], 5 ) ],

        [ 3, -3, ElementOfGradedRelativeRing( [ [ 4, 0 ] ], 5 ) ],

        [ 3, -2, ElementOfGradedRelativeRing( [ [ 2, 0 ], [ 10, 1 ], [ 15, 2 ], [ 5, 3 ] ], 5 ) ],

        [ 2, 0, ElementOfGradedRelativeRing( [ [ 2, 0 ], [ 10, 1 ], [ 20, 2 ], [ 20, 3 ], [ 10, 4 ], [ 2, 5 ] ], 5 ) ],

        [ 1, 2, ElementOfGradedRelativeRing( [ [ 5, 2 ], [ 15, 3 ], [ 10, 4 ], [ 2, 5 ] ], 5 ) ],

        [ 1, 3, ElementOfGradedRelativeRing( [ [ 4, 5 ] ], 5 ) ],

        [ 0, 5, ElementOfGradedRelativeRing( [ [ 4, 5 ] ], 5 ) ],

        [ 1, 4, ElementOfGradedRelativeRing( [ [ 15, 6 ], [ 35, 7 ], [ 20, 8 ] ], 5 ) ],

        [ 0, 6, ElementOfGradedRelativeRing( [ [ 15, 6 ], [ 35, 7 ], [ 20, 8 ] ], 5 ) ],

        [ 1, 5, ElementOfGradedRelativeRing( [ [ 2, 10 ] ], 5 ) ],

        [ 0, 7, ElementOfGradedRelativeRing( [ [ 2, 10 ] ], 5 ) ]
        
      ], 4
    );
    
    return VirtualTateSpectralSequence( [ first_page, second_page ] );
  
end );

##################################
##
## Constructors
##
##################################

##
InstallMethod( VirtualTateSpectralSequencePage,
               "for a list",
               [ IsList, IsInt ],

  function( list, dimension )
    local reduced_list, summand, position, virtual_tate_spectral_sequence_page;

    if false in List( list, i -> IsInt( i[1] ) and IsInt( i[2] ) and IsElementOfGradedRelativeRingRep( i[3] ) ) then

      Error( "invalid input\n" );
    
    fi;

    reduced_list := [ ];

    for summand in list do

      position := PositionProperty( reduced_list, reduced_summand -> ( reduced_summand[ 1 ] = summand[ 1 ] ) and ( reduced_summand[ 2 ] = summand[ 2 ] ) );

      if not position = fail then

        reduced_list[ position ] := [ summand[1], summand[2], reduced_list[ position ][ 3 ] + summand[ 3 ] ];

      else

        Add( reduced_list, summand );

      fi;

    od;

    reduced_list := Filtered( reduced_list, summand -> not IsZero( summand[ 3 ] ) );
    
    virtual_tate_spectral_sequence_page := rec( ListOfEntries := reduced_list );

    ObjectifyWithAttributes( virtual_tate_spectral_sequence_page, TheTypeVirtualTateSpectralSequencePage,
                             Dimension, dimension );

    return virtual_tate_spectral_sequence_page;
  
end );

##
InstallMethod( VirtualTateSpectralSequence,
               "for a root sequence",
               [ IsRootSequenceRep ],

  function( root_sequence )
    local dimension, virtual_tate_spectral_sequence, strictly_decreasing_integer_sequence, i, r, lastpage,
          entry, pages_interval, pages, page, edges, first_page;

    dimension := LengthOfRootSequences( UnderlyingPosetOfRootSequences( root_sequence ) );

    first_page := VirtualCohomologyTable( root_sequence );

    #fill the pages
    
    strictly_decreasing_integer_sequence := root_sequence!.StrictlyDecreasingIntegerSequence;

    pages := [ first_page ];

    edges := Edges( root_sequence );

    #build page 2
    page := [ ];
    
    for i in edges do
    
      if first_page[ [ i[1], i[2] - 1 ] ] <> 0 then
  
         #coker
        Add( page, [ i[1], i[2], K0ElementLift( first_page, i[1] + i[2] + 1 ) ] );
      
      elif first_page[ [ i[1], i[2] + 1 ] ] <> 0 then

         #ker
        Add( page, [ i[1], i[2], K0ElementLift( first_page, i[1] + i[2] ) ] );

      else

        Add( page, [ i[1], i[2],
        ElementOfGradedRelativeRing( [ [ first_page[ i ], 0 ] ], dimension + 1 ) *
        VerticalShift( HilbertSeriesOfExteriorAlgebra( dimension ), dimension + 1 + i[2] ) ] );
      
      fi;
    
    od;

    page := VirtualTateSpectralSequencePage( page, dimension );

    Add( pages, page );
    
    for r in [ 3 .. dimension + 2 ] do

      lastpage := pages[ r - 1 ];

      edges := lastpage!.ListOfEntries;

      page := [ ];

      for i in edges do

        #is it a cokernel?
        if first_page[ [ i[1], i[2] - 1 ] ] <> 0 then
        
          if IsZero( lastpage[ [ i[1] - ( r - 2 ), i[2] + ( r - 1 ) ] ] ) then

            Add( page, [ i[1], i[2], lastpage[ [ i[1], i[2] ] ] ] );

          fi;

        #is it a kernel?
        elif first_page[ [ i[1], i[2] + 1 ] ] <> 0 then
        
          if IsZero( lastpage[ [ i[1] + ( r - 2 ), i[2] - ( r - 1 )  ] ] ) then

            Add( page, [ i[1], i[2], lastpage[ [ i[1], i[2] ] ] ] );

          fi;

        #is it free?
        else
        
          entry := lastpage[ [ i[1], i[2] ] ];

          #is there a non trivial morphism with entry as source?
          if not IsZero( lastpage[ [ i[1] - ( r - 2 ), i[2] + ( r - 1 )  ] ] ) then

            #- coimage
            entry := entry - K0ElementLift( first_page, i[1] + i[2] + 1 );
          
          fi;

          #is there a non trivial morphism with entry as target?
          if not IsZero( lastpage[ [ i[1] + ( r - 2 ), i[2] - ( r - 1 )  ] ] ) then

            #- coimage
            entry := entry - K0ElementLift( first_page, i[1] + i[2] );

          fi;

          if not IsZero( entry ) then

            Add( page, [ i[1], i[2], entry ] );

          fi;

        fi;

      od;

      page := VirtualTateSpectralSequencePage( page, dimension );

      Add( pages, page );

    od;    

    virtual_tate_spectral_sequence := rec( Pages := pages );

    ObjectifyWithAttributes( virtual_tate_spectral_sequence, TheTypeVirtualTateSpectralSequence,
                             Dimension, dimension,
                             FirstPage, first_page
                           );
    
    return virtual_tate_spectral_sequence;
  
end );

##
InstallMethod( VirtualTateSpectralSequence,
               "for a root sequence",
               [ IsList ],

  function( list_of_pages )
    local length, virtual_tate_spectral_sequence, dimension;

    length := Length( list_of_pages );

    if not IsVirtualCohomologyTableRep( list_of_pages[1] ) then

      Error( "the first element must be a virtual cohomology table\n" );
    
    fi;
    
    if false in List( list_of_pages{ [ 2 .. length ] }, IsVirtualTateSpectralSequencePage ) then

      Error( "every element except the first one must be a virtual Tate spectral sequence page\n" );
    
    fi;

    dimension := Set( List( list_of_pages, Dimension ) );

    if Size( dimension ) <> 1 then

      Error( "the pages must be equidimensional\n" );
    
    fi;

    dimension := dimension[1];

    virtual_tate_spectral_sequence := rec( Pages := list_of_pages );

    ObjectifyWithAttributes( virtual_tate_spectral_sequence, TheTypeVirtualTateSpectralSequence,
                         Dimension, dimension,
                         FirstPage, list_of_pages[1]
                       );

    return virtual_tate_spectral_sequence;                         

end );

#################################
##
## Display
##
#################################

##
InstallMethod( ViewObj,
               "for a virtual Tate spectral sequence",
               [ IsVirtualTateSpectralSequenceRep ],

  function( virtual_tate_spectral_sequence )

    Print( "<" );

    Display( virtual_tate_spectral_sequence );

    Print( ">" );

end );

##
InstallMethod( Display,
               "for a virtual Tate spectral sequence",
               [ IsVirtualTateSpectralSequenceRep ],

  function( virtual_tate_spectral_sequence )

    Print( "A virtual Tate spectral sequence" );

end );

##
InstallMethod( ViewObj,
               "for a virtual Tate spectral sequence page",
               [ IsVirtualTateSpectralSequencePageRep ],

  function( virtual_tate_spectral_sequence_page )

    Print( "<A virtual Tate spectral sequence page>" );
  
end );

##
InstallMethod( Display,
               "for a virtual Tate spectral sequence page",
               [ IsVirtualTateSpectralSequencePageRep ],

  function( virtual_tate_spectral_sequence_page )
    local betti_table;

    betti_table := BettiTable( virtual_tate_spectral_sequence_page );

    if betti_table!.column_range = BOIJ_SOEDERBERG.CategoryOfVectorSpacesOfVirtualCohomologyTables!.display_interval then

      Display( betti_table );

    else

      ResetFilterObj( virtual_tate_spectral_sequence_page, HasBettiTable );

      Display( BettiTable( virtual_tate_spectral_sequence_page ) );

    fi;
  
end );