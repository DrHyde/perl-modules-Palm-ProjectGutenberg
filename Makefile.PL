use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Palm::ProjectGutenberg',
    META_MERGE => {
        license => 'other',
        resources => {
	    repository => 'https://github.com/DrHyde/perl-modules-Palm-ProjectGutenberg',
	    bugtracker => 'https://github.com/DrHyde/perl-modules-Palm-ProjectGutenberg/issues'
        }
    },
    VERSION_FROM => 'lib/Palm/ProjectGutenberg.pm', # finds $VERSION
    PREREQ_PM    => {
        'Palm::Doc'  => 1.19,
        'File::Spec::Functions' => 0,
	'Test::More' => 0
    },
    EXE_FILES    => [qw(bin/pg2pdb)],
    clean        => { FILES => 't/ARTISTIC-test.pdb' }
);
