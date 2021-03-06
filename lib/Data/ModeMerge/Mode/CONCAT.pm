package Data::ModeMerge::Mode::CONCAT;

# DATE
# VERSION

use 5.010;
use strict;
use warnings;
use Mo qw(build default);
extends 'Data::ModeMerge::Mode::ADD';

sub name { 'CONCAT' }

sub precedence_level { 2 }

sub default_prefix { '.' }

sub default_prefix_re { qr/^\./ }

sub merge_SCALAR_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, ($l // "") . $r);
}

1;
# ABSTRACT: Handler for Data::ModeMerge CONCAT merge mode

=head1 SYNOPSIS

 use Data::ModeMerge;

=head1 DESCRIPTION

This is the class to handle CONCAT merge mode.

=for Pod::Coverage ^merge_.*

