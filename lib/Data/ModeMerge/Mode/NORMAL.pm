package Data::ModeMerge::Mode::NORMAL;
# ABSTRACT: Handler for Data::ModeMerge NORMAL merge mode

=head1 SYNOPSIS

    use Data::ModeMerge;

=head1 DESCRIPTION

This is the class to handle NORMAL merge mode.

=for Pod::Coverage ^merge_.*

=cut

use 5.010;
use strict;
use warnings;

use Moo;
extends 'Data::ModeMerge::Mode::Base';

sub name { 'NORMAL' }

sub precedence_level { 5 }

sub default_prefix { '*' }

sub default_prefix_re { qr/^\*/ }

sub merge_SCALAR_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_SCALAR_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_SCALAR_HASH {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_SCALAR_CODE {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_ARRAY_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_ARRAY_HASH {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_ARRAY_CODE {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_HASH_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_HASH_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_HASH_CODE {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_CODE_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_CODE_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_CODE_HASH {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

sub merge_CODE_CODE {
    my ($self, $key, $l, $r) = @_;
    ($key, $r);
}

1;
