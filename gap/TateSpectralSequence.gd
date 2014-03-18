#! @Chapter Spectral Sequences of Tate Sequences

#################################
##
## Categories
##
#################################

DeclareCategory( "IsVirtualTateSpectralSequence", IsAdditiveElementWithInverse );

DeclareCategory( "IsVirtualTateSpectralSequencePage", IsAdditiveElementWithInverse );

#################################
##
#! @Section Properties
##
#################################

#################################
##
#! @Section Attributes
##
#################################

DeclareAttribute( "Dimension",
                  IsVirtualTateSpectralSequence );

DeclareAttribute( "FirstPage",
                  IsVirtualTateSpectralSequence );

DeclareAttribute( "Dimension",
                  IsVirtualTateSpectralSequencePage );
                  
DeclareAttribute( "BettiTable",
                  IsVirtualTateSpectralSequencePage );

#################################
##
#! @Section Operators
##
#################################

DeclareOperation( "\[\]",
                  [ IsVirtualTateSpectralSequencePage, IsList ] );
                                    
DeclareOperation( "\[\]",
                  [ IsVirtualTateSpectralSequence, IsList ] );

DeclareOperation( "\*",
                  [ IsVirtualTateSpectralSequencePage, IsRat ] );

DeclareOperation( "\*",
                  [ IsRat, IsVirtualTateSpectralSequencePage ] );
                  
DeclareOperation( "SpectralSequencePage",
                  [ IsVirtualTateSpectralSequence, IsInt ] );

DeclareOperation( "SpectralSequenceOfHorrocksMumfordBundle",
                  [ ] );                  

#################################
##
#! @Section Constructors
##
#################################

#Attributes?
DeclareOperation( "VirtualTateSpectralSequence",
                  [ IsRootSequence ] );

DeclareOperation( "VirtualTateSpectralSequence",
                  [ IsList ] );

DeclareOperation( "VirtualTateSpectralSequencePage",
                  [ IsList, IsInt ] );