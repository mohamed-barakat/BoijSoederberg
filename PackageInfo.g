SetPackageInfo( rec(

PackageName := "BoijSoederberg",

Subtitle := "A package for Boij Söderberg theory",

Version := "1.2",

Date := "30/01/2014",

Persons := [
  rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Sebastian",
    LastName := "Posur",
    WWWHome := "http://wwwb.math.rwth-aachen.de/Mitarbeiter/posur.php",
    Email := "sposur@momo.math.rwth-aachen.de",
    PostalAddress := Concatenation( [
                   "Lehrstuhl B für Mathematik RWTH - Aachen\n",
                   "Templergraben 64\n",
                   "52062 Aachen\n",
                   "Germany" ] ),
    Place := "Aachen",
    Institution := "Rheinisch-Westfälische Technische Hochschule Aachen",
  ),
],

Status := "dev",

PackageWWWHome := "http://github.com/sebastianpos/BoijSoederberg/",

ArchiveFormats := ".tar.gz",

ArchiveURL     := Concatenation( ~.PackageWWWHome, "BoijSoederberg-", ~.Version ),
README_URL     := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "BoijSoederberg",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A package for Boij Söderberg theory",
),

Dependencies := rec(
  GAP := ">= 4.6",
  NeededOtherPackages := [
                           [ "CombinatoricsForHomalg", ">=2013.09.21" ],
                           [ "GradedModules", ">=2012.03.09" ],
                           [ "Convex", ">= 2012.04.03" ],
                           [ "4ti2Interface", ">=2013.03.19" ],
                           [ "AutoDoc", ">=2013.07.25" ]
                         ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := []
                      
),

AvailabilityTest := function()
        return true;
    end,

Autoload := false,

Keywords := [ "Boij-Söderberg", "Vector bundles", "Cohomology tables" ]

));


