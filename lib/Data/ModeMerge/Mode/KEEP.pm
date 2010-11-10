package Data::ModeMerge::Mode::KEEP;
# ABSTRACT: Handler for Data::ModeMerge KEEP merge mode

=head1 SYNOPSIS

    use Data::ModeMerge;

=head1 DESCRIPTION

This is the class to handle KEEP merge mode.

=cut

use 5.010;
use Any::Moose;
extends 'Data::ModeMerge::Mode::Base';

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

override merge_ARRAY_ARRAY => sub {
    my ($self, $key, $l, $r) = @_;
    super($key, $l, $r, 'KEEP');
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

override merge_HASH_HASH => sub {
    my ($self, $key, $l, $r) = @_;
    super($l, $r, 'KEEP');
};

__PACKAGE__->meta->make_immutable;
no Any::Moose;
1;
