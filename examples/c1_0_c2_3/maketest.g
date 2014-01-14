AUTODOC_file_scan_list := [  ];

LoadPackage( "GAPDoc" );

example_tree := ExtractExamples( Directory("c1_0_c2_3/"), "Beispiel.xml", AUTODOC_file_scan_list, 500 );

RunExamples( example_tree, rec( compareFunction := "uptowhitespace" ) );

QUIT;
