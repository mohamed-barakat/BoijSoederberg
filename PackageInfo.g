SetPackageInfo( rec(

PackageName := "BoijSoederberg",

Subtitle := "A package for Boij Soederberg theory",

Version := "0.1",

Date := "04/12/2013",

Persons := [
  rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Sebastian",
    LastName := "Posur",
    WWWHome := "http://wwwb.math.rwth-aachen.de/Mitarbeiter/posur.php",
    Email := "sposur@momo.math.rwth-aachen.de",
    PostalAddress := "Lehrstuhl B für Mathematik RWTH - Aachen\nTemplergraben 64\n52062 Aachen\nGermany",
    Place := "Aachen",
    Institution := "Rheinisch-Westfaelische Technische Hochschule Aachen",
  ),
],

Status := "dev",

PackageWWWHome := "http://www.TODO.INSERT.WEBPAGE.HERE/",
#PackageWWWHome := "http://github.com/username/BoijSoederberg/",

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
  LongTitle := "A package for Boij Soederberg theory",
),

Dependencies := rec(
  GAP := ">= 4.5",
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

Keywords := [ "Boij Soederberg", "Vector Bundles", "Cohomology Tables" ]

));


