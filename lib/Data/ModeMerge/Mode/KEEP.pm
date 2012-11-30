package Data::ModeMerge::Mode::KEEP;

use 5.010;
use Moo;
extends 'Data::ModeMerge::Mode::Base';

# VERSION

sub name { 'KEEP' }

sub precedence_level { 6 }

sub default_prefix { '^' }

sub default_prefix_re { qr/^\^/ }

sub merge_SCALAR_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_SCALAR_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_SCALAR_HASH {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_ARRAY_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_ARRAY_ARRAY {
    my ($self, $key, $l, $r) = @_;
    $self->SUPER::merge_ARRAY_ARRAY($key, $l, $r, 'KEEP');
};

sub merge_ARRAY_HASH {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_HASH_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_HASH_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, $l);
}

sub merge_HASH_HASH {
    my ($self, $key, $l, $r) = @_;
    $self->SUPER::merge_HASH_HASH($key, $l, $r, 'KEEP');
};

1;
# ABSTRACT: Handler for Data::ModeMerge KEEP merge mode

=head1 SYNOPSIS

 use Data::ModeMerge;

=head1 DESCRIPTION

This is the class to handle KEEP merge mode.

=for Pod::Coverage ^merge_.*

=cut

