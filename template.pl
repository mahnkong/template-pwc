package Challenge;

use strict;
use experimental 'signatures';

our $verbose = 0;

sub print($text) {
    print "$text\n" if $verbose;
}

sub run() {
    Challenge::print("Implement me");
    return 1
}

package main;
use strict;
use Test::More 'no_plan';

ok(Challenge::run(), "dummy test");

1;
