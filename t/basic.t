use strict;
use warnings;
use Test::More;

use Number::Zero;

ok is_zero 0;
ok !(is_zero 1);
ok !(is_zero 1326);
ok !(is_zero 'umeyuki');
ok !(is_zero '');
ok !(is_zero ' ');
ok !(is_zero '　');
ok !(is_zero undef);

done_testing;
