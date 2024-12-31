package Challenge;

use strict;

sub new {
    my $class = shift;
    my $opts  = shift;
    my $self = {
        verbose => $opts->{verbose} || 0,
    };

    bless $self, $class;
    return $self;
}

sub print($$) {
    my $self = shift;
    my $text = shift;

    print "$text\n" if $self->{verbose};
}

sub run($) {
    my $self = shift;
    $self->print("Implement me");
}

package main;
use strict;
use Getopt::Long;

my %opts = (test => 0, verbose => 0);
main();

sub main {
    GetOptions (
        "test" => \$opts{test},
        "verbose" => \$opts{verbose}
    ) or die("Usage: $0 [ --verbose --test ]");

    unless ($opts{test}) {
        validate_opts();

        my $challenge = new Challenge(\%opts);
        $challenge->run();
    } else {
        test();
    }
}

sub validate_opts {
    delete $opts{test};
    # validate opts if required
}

sub test() {
    require Test::More; import Test::More 'no_plan';

    my $c = new Challenge({verbose => 1});
    ok($c->run(), "dummy test");
}

1;
