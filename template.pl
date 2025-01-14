use strict;
use warnings;
use feature 'signatures';
use Test::More 'no_plan';

sub run() {
    print "implement me!\n";
    return 1
}

ok(run(), "dummy test");
