package Data::ModeMerge::Mode::ADD;

use 5.010;
use Moo;
extends 'Data::ModeMerge::Mode::NORMAL';

# VERSION

sub name { 'ADD' }

sub precedence_level { 3 }

sub default_prefix { '+' }

sub default_prefix_re { qr/^\+/ }

sub merge_SCALAR_SCALAR {
    my ($self, $key, $l, $r) = @_;
    ($key, ( $l // 0 ) + $r);
}

sub merge_SCALAR_ARRAY {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add scalar and array");
    return;
}

sub merge_SCALAR_HASH {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add scalar and hash");
    return;
}

sub merge_ARRAY_SCALAR {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add array and scalar");
    return;
}

sub merge_ARRAY_ARRAY {
    my ($self, $key, $l, $r) = @_;
    ($key, [ @$l, @$r ]);
}

sub merge_ARRAY_HASH {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add array and hash");
    return;
}

sub merge_HASH_SCALAR {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add hash and scalar");
    return;
}

sub merge_HASH_ARRAY {
    my ($self, $key, $l, $r) = @_;
    $self->merger->push_error("Can't add hash and array");
    return;
}

1;
# ABSTRACT: Handler for Data::ModeMerge ADD merge mode

=head1 SYNOPSIS

 use Data::ModeMerge;

=head1 DESCRIPTION

This is the class to handle ADD merge mode.

=for Pod::Coverage ^merge_.*

=cut
