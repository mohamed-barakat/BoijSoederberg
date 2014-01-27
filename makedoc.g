LoadPackage( "AutoDoc" );

AutoDoc( "BoijSoederberg" :
        
        scaffold := rec( entities := [ "homalg", "GAP4" ],
                         ),
        
        autodoc := rec( files := [ "doc/Intros.autodoc" ] ),
        
        maketest := rec( folder := ".",
                         commands :=
                         [ "LoadPackage( \"BoijSoederberg\" );",
                           "LoadPackage( \"IO_ForHomalg\" );",
                           "HOMALG_IO.show_banners := false;",
                           "HOMALG_IO.suppress_PID := true;",
                           "HOMALG_IO.use_common_stream := true;",
                           ],
                         ),
        
        Bibliography := "BoijSoederberg.bib"
        
);

# Create VERSION file for "make towww"
PrintTo( "VERSION", PackageInfo( "Blocks" )[1].Version );

QUIT;
