use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Palm::ProjectGutenberg',
    VERSION_FROM => 'lib/Palm/ProjectGutenberg.pm', # finds $VERSION
    PREREQ_PM    => {
        'Palm::Doc'  => 1.19,
	'Test::More' => 0
    },
    EXE_FILES    => [qw(bin/pg2pdb)],
    clean        => { FILES => 't/ARTISTIC-test.pdb' }
);
