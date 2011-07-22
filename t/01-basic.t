#!/usr/bin/perl

use Test::More 'no_plan';
use Class::Attribute::DWIMWeaken;


{
    package My::Parent;
    use Moose;

    has child => ( is => 'ro', lazy_build => 1 );

    sub _build_child {
        my $self = shift;
        return My::Child->new( parent => $self );
    }
}    
{

    package My::Child;
    use Moose;

    has parent => ( is => 'ro', lazy_build => 1 );

    sub _build_parent {
        my $self = shift;
        return My::Parent->new( child => $self );
    }
}


{
    my $parent = My::Parent->new;
    ok $parent->child;
    is( $parent, $parent->child->parent );
}
{
    my $child = My::Child->new;
    ok $child->parent;
    is( $child, $child->parent->child);
}
