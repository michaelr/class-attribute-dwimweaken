use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Class::Attribute::DWIMWeaken',
    license             => 'perl',
    dist_author         => q{Michael Reddick <michael.reddick@gmail.com>},
    dist_version_from   => 'lib/Class/Attribute/DWIMWeaken.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'Class-Attribute-DWIMWeaken-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
