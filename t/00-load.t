#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Class::Attribute::DWIMWeaken' ) || print "Bail out!\n";
}

diag( "Testing Class::Attribute::DWIMWeaken $Class::Attribute::DWIMWeaken::VERSION, Perl $], $^X" );
