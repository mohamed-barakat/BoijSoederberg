#! @Title Boij Söderberg
#! @Author Sebastian Posur

#! @Chapter BoijSoederberg
LoadPackage( "comb" );

LoadPackage( "GradedModules" );

LoadPackage( "Convex" );

LoadPackage( "4ti2Interface" );

#################################
##
## Global
##
#################################

DeclareGlobalVariable( "BOIJ_SOEDERBERG" );

#################################
##
## Categories
##
#################################

DeclareCategory( "IsPosetOfRootSequences", IsObject );

DeclareCategory( "IsRootSequence", IsObject );

DeclareCategory( "IsIntervalOfRootSequences", IsObject );

DeclareCategory( "IsMorphismOfIntervalsOfRootSequences", IsObject );

DeclareCategory( "IsVirtualCohomologyTable", IsAdditiveElementWithInverse );

DeclareCategory( "IsVirtualHilbertPolynomial", IsAdditiveElementWithInverse );

DeclareCategory( "IsVectorSpaceWithIntegralStructure", IsObject );

DeclareCategory( "IsMorphismOfVectorSpacesWithIntegralStructure", IsObject );

#################################
##
## Properties
##
#################################

#! @Section Properties

## IsVectorSpaceWithIntegralStructure
#! @Description Returns true if the given vector space with integral structure has an embedding into a super space, false otherwise.
#! @Arguments vector_space_with_integral_structure
DeclareProperty( "IsEmbedded",
                 IsVectorSpaceWithIntegralStructure );

#! @Description Returns true if the given vector space with integral structure has a concrete presentation, false otherwise.
#! @Arguments vector_space_with_integral_structure                 
DeclareProperty( "IsConcrete",
                 IsVectorSpaceWithIntegralStructure );

## IsVirtualHilbertPolynomial
#! @Description Returns true if the given virtual Hilbert polynomial has only integral values, false otherwise.
#! @Arguments virtual_hilbert_polynomial
DeclareProperty( "IsIntegral",
                 IsVirtualHilbertPolynomial );

## IsVirtualCohomologyTable
#! @Description Returns true if the given virtual cohomology table has only integral values, false otherwise.
#! @Arguments virtual_cohomology_table
DeclareProperty( "IsIntegral",
                 IsVirtualCohomologyTable );

#################################
##
## Attributes
##
#################################

#! @Section Attributes

## IsPosetOfRootSequences
#! @Description Returns the length of the root sequence in this poset.
#! @Returns a positive integer
#! @Arguments poset_of_root_sequences
DeclareAttribute( "LengthOfRootSequences",
                  IsPosetOfRootSequences );

## IsRootSequence
#TODO: Change the name of this Attribute
#! @Description Returns the poset of root sequence in which the given root sequence lies.
#! @Returns a poset of root sequences
#! @Arguments root_sequence
DeclareAttribute( "UnderlyingPosetOfRootSequences",
                  IsRootSequence );

#! @Description Computes the virtual Hilbert polynomial associated to the virtual vector bundle of rank 1 with supernatural cohomology given by
#! the root sequence.
#! @Returns a virtual Hilbert polynomial
#! @Arguments root_sequence
DeclareAttribute( "HilbertPolynomial",
                  IsRootSequence );

#TODO: This has to become a constructor
#! @Description Computes the virtual cohomology table associated to the virtual vector bundle of rank 1 with supernatural cohomology given by
#! the root sequence.
#! @Returns a virtual cohomology table
#! @Arguments root_sequence
DeclareAttribute( "CohomologyTable",
                  IsRootSequence );

DeclareAttribute( "Dual",
                  IsRootSequence );
                  
## IsIntervalOfRootSequences
#! @Description Returns the category of intervals of root sequences.
#! @Returns a Homalg category
#! @Arguments interval_of_root_sequences
DeclareAttribute( "Category",
                  IsIntervalOfRootSequences );

#TODO: Change the name of this Attribute
#! @Description Returns the poset of root sequences in which all root sequences within the given interval lie in.
#! @Returns a poset of root sequences
#! @Arguments interval_of_root_sequences
DeclareAttribute( "UnderlyingPosetOfRootSequences",
                  IsIntervalOfRootSequences );

#! @Description Returns the left boundary of the given interval of root sequences.
#! @Returns a root sequence
#! @Arguments interval_of_root_sequences                  
DeclareAttribute( "LeftBoundary",
                  IsIntervalOfRootSequences );

#! @Description Returns the right boundary of the given interval of root sequences.
#! @Returns a root sequence
#! @Arguments interval_of_root_sequences                   
DeclareAttribute( "RightBoundary",
                  IsIntervalOfRootSequences );

#! @Description Computes the underlying set of the given interval of root sequences.
#! @Returns a set of root sequences
#! @Arguments interval_of_root_sequences                   
DeclareAttribute( "UnderlyingSet",
                  IsIntervalOfRootSequences );

#! @Description Computes the largest maximal chain of the given interval of root sequences.
#! @Returns a list of root sequences
#! @Arguments interval_of_root_sequences                     
DeclareAttribute( "TopMaximalChain",
                  IsIntervalOfRootSequences );

#! @Description Computes a chain of root sequences whose corresponding Hilbert polynomials form a basis of the
#! vector space of Hilbert polynomials within <A>interval_of_root_sequences</A>.
#! @Returns a list of root sequences
#! @Arguments interval_of_root_sequences                     
DeclareAttribute( "TopMaximalHilbertChain",
                  IsIntervalOfRootSequences );

#! @Description Computes the entries of a cohomology table within <A>interval_of_root_sequences</A>
#! which can be modified without changing the Hilbert polynomial.
#! @Returns a list of pairs of integers
#! @Arguments interval_of_root_sequences                   
DeclareAttribute( "KernelEntries",
                  IsIntervalOfRootSequences );
                  
## IsMorphismOfIntervalsOfRootSequences

#! @Description Returns the source of the given morphism of intervals of root sequences.
#! @Returns an interval of root sequences
#! @Arguments morphism_of_intervals_of_root_sequences   
DeclareAttribute( "Source",
                  IsMorphismOfIntervalsOfRootSequences );
                  
#! @Description Returns the range of the given morphism of intervals of root sequences.
#! @Returns an interval of root sequences
#! @Arguments morphism_of_intervals_of_root_sequences 
DeclareAttribute( "Range",
                  IsMorphismOfIntervalsOfRootSequences );

## IsVirtualCohomologyTable
##TODO: Change name
#! @Description Returns the poset of root sequences associated to the given virtual cohomology table.
#! @Returns a poset of root sequences
#! @Arguments virtual_cohomology_table
DeclareAttribute( "UnderlyingPosetOfRootSequences",
                  IsVirtualCohomologyTable );

#! @Description Computes the Betti table of the given virtual cohomology table
#! @Returns a Homalg Betti table
#! @Arguments virtual_cohomology_table                  
DeclareAttribute( "BettiTable",
                  IsVirtualCohomologyTable );

#! @Description Computes the Hilbert polynomial of the given virtual cohomology table
#! @Returns a polynomial
#! @Arguments virtual_cohomology_table                     
DeclareAttribute( "HilbertPolynomial",
                  IsVirtualCohomologyTable );

#! @Description Computes the interval spanned by the root sequences of the internal representation.
#! Note that this is not an attribute of a virtual cohomology table as a mathematical object.
#! @Returns an interval of root sequences
#! @Arguments virtual_cohomology_table                     
# DeclareAttribute( "IntervalOfMinimalAmbientSpace",
DeclareAttribute( "IntervalSpannedByRepresentation",
                  IsVirtualCohomologyTable );

#! @Description Computes the smallest right boundary in which the virtual cohomology table lies. If
#! the input is the zero table, then the function returns the empty list.
#! @Returns an interval of root sequences
#! @Arguments virtual_cohomology_table                  
DeclareAttribute( "RightBoundaryOfMinimalInterval",
                  IsVirtualCohomologyTable );
                  
#! @Description Computes the Boij Söderberg decomposition of a cohomology table.
#! @Returns a linear combination of cohomology tables with supernatural cohomology
#! @Arguments virtual_cohomology_table
DeclareAttribute( "BoijSoederbergDecomposition",
                  IsVirtualCohomologyTable );

DeclareAttribute( "Dual",
                  IsVirtualCohomologyTable );

DeclareAttribute( "Dimension",
                  IsVirtualCohomologyTable );

#NOT CORRECT
#! @Description Computes the interval of the minimal ambient space of the given virtual Hilbert polynomial
#! @Returns an interval of root sequences
#! @Arguments virtual_hilbert_polynomial                         
DeclareAttribute( "IntervalOfMinimalAmbientSpace",
                  IsVirtualHilbertPolynomial );
                  
## IsVirtualHilbertPolynomial
#! @Description Returns the underlying polynomial of the given virtual Hilbert polynomial.
#! @Returns a polynomial
#! @Arguments virtual_hilbert_polynomial  
DeclareAttribute( "UnderlyingPolynomial",
                  IsVirtualHilbertPolynomial );

#! @Description Computes the embedding of the one dimensional vector space spanned by the given virtual Hilbert polynomial
#! into the vector space of all virtual Hilbert polynomials.
#! @Returns a Homalg map
#! @Arguments virtual_hilbert_polynomial                   
DeclareAttribute( "EmbeddingIntoSuperVectorSpace",
                  IsVirtualHilbertPolynomial );

#! @Description Computes the corresponding element in the Grothendieck Group of stable modules over the exterior algebra.
#! @Returns an element of a graded relative ring
#! @Arguments virtual_hilbert_polynomial                    
DeclareAttribute( "K0ElementOfStableModuleCategory",
                  IsVirtualHilbertPolynomial );

#! @Description Computes a pair containing the normalized Chern polynomial together with the twist which was needed for normalization.
#! @Returns A list with an integer and a chern polynomial with rank
#! @Arguments virtual_hilbert_polynomial                  
DeclareAttribute( "TwistedChernPolynomial",
                  IsVirtualHilbertPolynomial );

#! @Description Computes the Chern polynomial with rank corresponding to the given Hilbert polynomial
#! @Returns a chern polynomial with rank
#! @Arguments virtual_hilbert_polynomial      
DeclareAttribute( "ChernPolynomial",
                  IsVirtualHilbertPolynomial );

##TODO: Clean this Attribute                  
DeclareAttribute( "Dimension",
                  IsVirtualHilbertPolynomial );
                  
DeclareAttribute( "Dual",
                  IsVirtualHilbertPolynomial );

## IsVectorSpaceWithIntegralStructure

#! @Description Returns the underlying structure morphism which defines the lattice of the input.
#! @Returns a homalg map
#! @Arguments vector_space_with_integral_structure
DeclareAttribute( "UnderlyingStructureMorphism",
                  IsVectorSpaceWithIntegralStructure );
                  
#! @Description Returns the underlying vector space, i.e., the vector space without the integral structure.
#! @Returns a Homalg module
#! @Arguments vector_space_with_integral_structure
DeclareAttribute( "UnderlyingVectorSpace",
                  IsVectorSpaceWithIntegralStructure );

# DeclareAttribute( "UnderlyingHomalgRing",
#                   IsVectorSpaceWithIntegralStructure );

#! @Description Returns the dimension of the given vector space with integral structure.
#! @Returns a non-negative integer
#! @Arguments vector_space_with_integral_structure
DeclareAttribute( "Dimension",
                  IsVectorSpaceWithIntegralStructure );

#! @Description Returns the embedding of an embedded vector space with integral structure.
#! @Returns a vector space with integral structure
#! @Arguments vector_space_with_integral_structure                  
DeclareAttribute( "EmbeddingIntoSuperVectorSpace",
                  IsVectorSpaceWithIntegralStructure and IsEmbedded );

#! @Description Returns the position of the concrete presentation of the given concrete vector space with integral structure.
#! @Returns a positive integer
#! @Arguments vector_space_with_integral_structure                    
DeclareAttribute( "PositionOfConcretePresentation",
                  IsVectorSpaceWithIntegralStructure and IsConcrete);

## IsMorphismOfVectorSpacesWithIntegralStructure

#! @Description Returns the underlying morphism of <A>\mathbb{Q}</A>-spaces of the given morphism of vector spaces with integral structure
#! @Returns a Homalg map
#! @Arguments morphism_of_vector_spaces_with_integral_structure
DeclareAttribute( "UnderlyingMorphism",
                  IsMorphismOfVectorSpacesWithIntegralStructure );

#! @Description Returns the source of the given morphism.
#! @Returns a vector space with integral structure
#! @Arguments morphism_of_vector_spaces_with_integral_structure                 
DeclareAttribute( "Source",
                  IsMorphismOfVectorSpacesWithIntegralStructure );

#! @Description Returns the range of the given morphism.
#! @Returns a vector space with integral structure
#! @Arguments morphism_of_vector_spaces_with_integral_structure                    
DeclareAttribute( "Range",
                  IsMorphismOfVectorSpacesWithIntegralStructure );
                  
#################################
##
## Operations
##
#################################

#! @Section Operations

#! @Description Computes the value of <A>virtual_hilbert_polynomial</A> at <A>rational</A>
#! @Returns a rational number
#! @Arguments virtual_hilbert_polynomial, rational
DeclareOperation( "Value",
                  [ IsVirtualHilbertPolynomial, IsRat ] );

DeclareOperation( "\*",
                  [ IsVirtualHilbertPolynomial, IsRat ] );
                  
DeclareOperation( "\*",
                  [ IsRat, IsVirtualHilbertPolynomial ] );

DeclareOperation( "\<",
                  [ IsRootSequence, IsRootSequence ] );

#! @Description Computes the infimum of <A>root_sequence_1</A> and <A>root_sequence_2</A> regarded as elements of
#! the poset of all root sequences
#! @Returns a root sequence
#! @Arguments root_sequence_1, root_sequence_2     
DeclareOperation( "Infimum",
                  [ IsRootSequence, IsRootSequence ] );

#! @Description The input is a list of root sequences. The operation returns the infimum of all elements in the given list.
#! @Returns a root sequence
#! @Arguments list_of_root_sequences
DeclareOperation( "Infimum",
                  [ IsList ] );

#! @Description Computes the supremum of <A>root_sequence_1</A> and <A>root_sequence_2</A> regarded as elements of
#! the poset of all root sequences.
#! @Returns a root sequence
#! @Arguments root_sequence_1, root_sequence_2                       
DeclareOperation( "Supremum",
                  [ IsRootSequence, IsRootSequence ] );

#! @Description The input is a list of root sequences. The operation returns the supremum of all elements in the given list.
#! @Returns a root sequence
#! @Arguments list_of_root_sequences                 
DeclareOperation( "Supremum",
                  [ IsList ] );

DeclareOperation( "\<",
                  [ IsIntervalOfRootSequences, IsIntervalOfRootSequences ] );

DeclareOperation( "\[\]",
                  [ IsRootSequence, IsInt ] );

DeclareOperation( "\[\]",
                  [ IsRootSequence, IsList ] );

DeclareOperation( "\[\]",
                  [ IsVirtualCohomologyTable, IsList ] );

DeclareOperation( "\*",
                  [ IsVirtualCohomologyTable, IsRat ] );

DeclareOperation( "\*",
                  [ IsRat, IsVirtualCohomologyTable ] );          
                  
#! @Description The input is a list of root sequences. The operation returns the list of coefficients of the given polynomial up to degree <A>degree</A>.
#! @Returns a list
#! @Arguments polynomial, degree
DeclareOperation( "RowOfCoefficients",
                  [ IsLaurentPolynomial, IsInt ] );

DeclareOperation( "RowOfCoefficients",
                  [ IsLaurentPolynomial, IsNegInfinity ] );

#! @Description Sets the display interval of virtual cohomology tables. Every list of integers is accepted as an input.
#! @Returns nothing
#! @Arguments list_of_integers
DeclareOperation( "SetDisplayInterval",
                  [ IsList ] );

DeclareOperation( "AllHilbertPolynomials",
                  [ IsIntervalOfRootSequences, IsInt ] );

#! @Description This operation uses the Boij-Soederberg cone. If <A>filter = true</A> (default) this operation
#! also takes into consideration that a vector bundle of rank <M>r</M> has vanishing Chern classes <M>c_l</M> for
#! <M>l > r</M>. It computes all Hilbert polynomials (and if <A>filter = true</A> also the corresponding Chern polynomials
#! with shift) within the given interval which cannot be excluded by combinatorial means to be associated to vector bundles with given rank.
#! @Returns a list
#! @Arguments interval_of_root_sequences, rank, filter
DeclareOperation( "AllHilbertPolynomials",
                  [ IsIntervalOfRootSequences, IsInt, IsBool ] );

#! @Description This operation uses the Boij-Soederberg cone. It computes all virtual cohomology tables within the given interval
#! which cannot be excluded by combinatorial means to be associated to vector bundles with given Hilbert polynomial.
#! @Returns a list
#! @Arguments interval_of_root_sequences, virtual_hilbert_polynomial
DeclareOperation( "AllCohomologyTables",
                  [ IsIntervalOfRootSequences, IsVirtualHilbertPolynomial ] );


#! @Description Input: <M>(a, i) \in \mathbb{N}^2</M>. Computes the i-th Macaulay expansion of a.
#! The output is a list containing pairs <M>[a_j, j]</M> such that <M>i \geq j \geq 1</M> and
#! a is the sum of the binomial coefficients a_j choose j.
#! @Returns a list
#! @Arguments a, i
DeclareOperation( "MacaulayExpansion",
                  [ IsInt, IsInt ] );

#! @Description Input: <M>(a, i) \in \mathbb{N}^2</M>. Let <M>[a_j, j]</M> be the i-th i-th Macaulay expansion of a.
#! The output is the sum of the binomial coefficients a_j choose j + 1.
#! @Returns an integer
#! @Arguments a, i                  
DeclareOperation( "KruskalKatonaFunction",
                  [ IsInt, IsInt ] );

DeclareOperation( "HilbertSeriesOfExteriorAlgebra",
                  [ IsInt ] );

DeclareOperation( "AllHilbertSeriesOfIdealsOfTheExteriorAlgebra",
                  [ IsInt ] );

DeclareOperation( "IsHilbertSeriesOfSubmoduleOfAFreeModuleOverTheExteriorAlgebra",
                  [ IsElementOfGradedRelativeRingRep, IsList ] );

DeclareOperation( "Twist",
                  [ IsRootSequence, IsInt ] );

DeclareOperation( "Twist",
                  [ IsVirtualCohomologyTable, IsInt ] );

DeclareOperation( "Twist",
                  [ IsVirtualHilbertPolynomial, IsInt ] );

DeclareOperation( "Twist",
                  [ IsChernPolynomialWithRank, IsInt ] );

DeclareOperation( "K0ElementLift",
                  [ IsVirtualCohomologyTable, IsInt ] );

DeclareOperation( "PushforwardAlongFiniteMorphism",
                  [ IsVirtualHilbertPolynomial, IsInt ] );
                  
#################################
##
## Constructors
##
#################################

#! @Section Constructors

#! @Description Constructs a poset of root sequences of given length.
#! @Returns a poset of root sequences
#! @Arguments length_of_root_sequences
DeclareOperation( "PosetOfRootSequences",
                  [ IsInt ] );

#! @Description
#!  The first argument is a list
#!  of integers, not necessarily sorted, which also may contain duplicates.
#!  The second optional argument is a poset of root sequences of which the constructed
#!  root sequence shall be an element. If no second argument is given, a
#!  standard poset of root sequences will be created and cached.
#! @Returns a root sequence
#! @Arguments list[,poset_of_root_sequences]
DeclareGlobalFunction( "RootSequence" );

#! @Description
#! The two arguments define the left boundary and the right boundary
#! of an interval of root sequences. The first argument must be smaller or equal
#! to the second argument. This operation constructs an interval of root sequences [ <A>root_sequence_1</A> .. <A>root_sequence_2</A> ].
#! @Returns an interval of root sequences
#! @Arguments root_sequence_1, root_sequence_2
DeclareOperation( "IntervalOfRootSequences",
                  [ IsRootSequence, IsRootSequence ] );

#! @Description Constructs the trivial interval of root sequences [ root_sequence .. root_sequence ].
#! @Returns an interval of root sequences
#! @Arguments root_sequence
DeclareOperation( "IntervalOfRootSequences",
                  [ IsRootSequence ] );

#! @Description
#! The interval_of_root_sequences_source must be contained in interval_of_root_sequences_source.
#! It constructs  a morphism from <A>interval_of_root_sequences_source</A> to <A>interval_of_root_sequences_range</A>.
#! @Returns a morphism of intervals of root sequences
#! @Arguments interval_of_root_sequences_source, interval_of_root_sequences_range
DeclareOperation( "MorphismOfIntervalsOfRootSequences",
                  [ IsIntervalOfRootSequences, IsIntervalOfRootSequences ] );

#! @Description
#! The argument must be a list of pairs consisting of a rational number and a root sequence.
#! This operation constructs a virtual cohomology table which corresponds to the linear combination given by list.
#! @Returns a virtual cohomology table
#! @Arguments list                  
DeclareOperation( "VirtualCohomologyTable",
                  [ IsList ] );

#! @Description
#! The first argument is a list of rational numbers. This operation constructs a virtual cohomology table computed as linear combination with coefficients given in <A>list</A>
#! and vectors given as the top maximal chain of the <A>interval_of_root_sequences</A>.
#! @Returns a virtual cohomology table
#! @Arguments list, interval_of_root_sequences
DeclareOperation( "VirtualCohomologyTable",
                  [ IsList, IsIntervalOfRootSequences ] );

#! @Description
#! The argument is a list of rational numbers, where the i-th argument contains the i-1-th coefficient of
#! the virtual Hilbert polynomial to be constructed.
#! @Returns a virtual Hilbert polynomial
#! @Arguments list_of_coefficients    
DeclareOperation( "VirtualHilbertPolynomial",
                  [ IsList ] );

#! @Description Constructs a virtual Hilbert polynomial with underlying polynomial <A>polynomial</A>.
#! @Returns a virtual Hilbert polynomial
#! @Arguments polynomial
DeclareOperation( "VirtualHilbertPolynomial",
                  [ IsLaurentPolynomial ] );
#                   [ IsPolynomialFunction ] );

#! @Description Constructs a virtual Hilbert polynomial corresponding to <A>root_sequence</A>.
#! @Returns a virtual Hilbert polynomial
#! @Arguments root_sequence
DeclareOperation( "VirtualHilbertPolynomial",
                  [ IsRootSequence ] );

#! @Description Constructs a virtual Hilbert polynomial associated to <A>virtual_cohomology_table</A>.
#! @Returns a virtual Hilbert polynomial
#! @Arguments virtual_cohomology_table
DeclareOperation( "VirtualHilbertPolynomial",
                  [ IsVirtualCohomologyTable ] );

#! @Description Constructs a virtual Hilbert polynomial associated to the given Chern polynomial with rank.
#! @Returns a virtual Hilbert polynomial
#! @Arguments chern_polynomial_with_rank
DeclareOperation( "VirtualHilbertPolynomial",
                  [ IsChernPolynomialWithRank ] );

#! @Description
#! The input is a map <M>V \rightarrow W</M> of <M>\mathbb{Q}</M>-spaces. The basis of the pushed presentation
#! to W will be the lattice basis of the output.
#! @Returns a vector space with integral structure
#! @Arguments homalg_map
DeclareOperation( "VectorSpaceWithIntegralStructure",
                  [ IsHomalgMap ] );

#! @Description
#! The first argument must be a list of univariate linearly independent polynomials over <M>\mathbb{Q}</M>.
#! The second argument is the maximal degree of the polynomials of the ambient space. This operation
#! constructs a vector space with integral structure generated by the polynomials in <A>list_of_hilbert_polynomials</A>
#! and embedded in the ambient space of polynomials of degree <A>degree</A>.
#! @Returns a vector space with integral structure
#! @Arguments list_of_hilbert_polynomials, degree                  
DeclareOperation( "SubVectorSpaceOfHilbertPolynomials",
                  [ IsList, IsInt ] );

#! @Description
#! Constructor of a morphism of vector spaces with integral structure.
#! The first and the second argument are vector spaces with integral structure
#! representing the source and the target of the morphism. The third
#! argument represents the underlying morphism <M>\alpha</M> of vector spaces.
#! If <M>\alpha</M> is not integral written with respect to the lattice structure,
#! the constructor will give an error.
#! @Returns a morphism of vector spaces
#! @Arguments IsVectorSpaceWithIntegralStructure, IsVectorSpaceWithIntegralStructure, IsHomalgMap
DeclareOperation( "MorphismOfVectorSpacesWithIntegralStructure",
                  [ IsVectorSpaceWithIntegralStructure, IsVectorSpaceWithIntegralStructure, IsHomalgMap ] );

#! @Description
#! Constructor of a morphism of a vector spaces with integral structure .
#! The first argument <M>V</M> is a vector space with integral structure, whose
#! underlying vector space must be identical to the range of the second
#! argument, which is a monomorphism <M>\alpha</M> of vector spaces. This operation
#! constructs  a morphism of vector spaces with integral structure whose underlying morphism
#! equals <M>\alpha</M>. It is the maximal morphism with this property.
#! @Returns a morphism of vector spaces with integral structure
#! @Arguments IsVectorSpaceWithIntegralStructure, IsHomalgMap
DeclareOperation( "MorphismOfVectorSpacesWithIntegralStructure",
                  [ IsVectorSpaceWithIntegralStructure, IsHomalgMap ] );
#################################
##
## Functors
##
#################################

#! @Section Functors

## VectorSpaceOfVirtualHilbertPolynomials
DeclareGlobalVariable( "functor_VectorSpaceOfVirtualHilbertPolynomials" );

#! @Description
#! This functor maps a morphism of intervals of root sequences <M>I \rightarrow J</M> to the embedding of
#! vector space of Hilbert polynomials lying above the interval <M>I</M> into the vector space of Hilbert polynomials
#! lying above the interval <M>J</M>.
DeclareOperation( "VectorSpaceOfVirtualHilbertPolynomials",
                  [ IsIntervalOfRootSequences ] );

DeclareGlobalFunction( "_Functor_VectorSpaceOfVirtualHilbertPolynomials_OnIntervalOfRootSequences" );

DeclareGlobalFunction( "_Functor_VectorSpaceOfVirtualHilbertPolynomials_OnMorphismOfIntervalsOfRootSequences" );

## VectorSpaceOfVirtualCohomologyTables
DeclareGlobalVariable( "functor_VectorSpaceOfVirtualCohomologyTables" );

#! @Description
#! This functor maps a morphism of intervals of root sequences <M>I \rightarrow J</M> to the embedding of
#! vector space of cohomology tables lying above the interval <M>I</M> into the vector space of cohomology tables
#! lying above the interval <M>J</M>.
DeclareOperation( "VectorSpaceOfVirtualCohomologyTables",
                  [ IsIntervalOfRootSequences ] );

DeclareGlobalFunction( "_Functor_VectorSpaceOfVirtualCohomologyTables_OnElementaryIntervals" );
                  
DeclareGlobalFunction( "_Functor_VectorSpaceOfVirtualCohomologyTables_OnIntervalOfRootSequences" );

DeclareGlobalFunction( "_Functor_VectorSpaceOfVirtualCohomologyTables_OnMorphismOfIntervalsOfRootSequences" );

## FullVectorSpaceOfVirtualHilbertPolynomials (a primitive functor)

#! @Description
#! This primitive functor associates to a natural number <M>n</M> the vector space of Hilbert polynomials of degree <M>n</M>.
DeclareOperation( "FullVectorSpaceOfVirtualHilbertPolynomials",
                  [ IsInt ] );
