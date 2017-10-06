#!perl;

package Data::ModeMerge::Mode::RL;

use 5.010;
use strict;
use warnings;
use Mo qw(build default);
extends 'Data::ModeMerge::Mode::NORMAL';

sub name { 'RL' }

sub default_prefix { '@' }

sub default_prefix_re { qr/^\@/ }

sub merge_right_only {
	my ($self, $key, $right) = @_;

	($key, ($right + 0) % 2 ? 'odd' : 'even', undef,undef,'NORMAL')
}

1;



use strict;
use warnings;
use Test::More tests => 4;

use lib './t';
do 'testlib.pm';

use Data::ModeMerge;

$INC{'Data/ModeMerge/Mode/RL.pm'} = '';

my $dm = Data::ModeMerge->new;
$dm->register_mode('Data::ModeMerge::Mode::RL');
$dm->combine_rules->{'NORMAL+RL'} = ['NORMAL','NORMAL'];


merge_is({},{ '@test' => 0, }, { test => 'even' }, 'Test 0',  $dm);
merge_is({},{ '@test' => 1, }, { test => 'odd' }, 'Test 1', $dm);
merge_is({},{ '@test' => 2, }, { test => 'even' }, 'Test 2', $dm);
merge_is({ test => 1 },{ '@test' => 2, }, { test => 2 }, 'Test with lhs', $dm);


1;
