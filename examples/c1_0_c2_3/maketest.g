AUTODOC_file_scan_list := [  ];

LoadPackage( "GAPDoc" );

example_tree := ExtractExamples( Directory("./"), "Beispiel.xml", AUTODOC_file_scan_list, 500 );

RunExamples( example_tree, rec( compareFunction := "uptowhitespace" ) );

QUIT;
