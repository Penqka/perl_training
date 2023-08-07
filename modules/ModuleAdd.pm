package ModuleAdd;
use strict;
use warnings;

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw (add_numbers);
our @EXPORT = qw (add_numbers);

sub add_numbers {
    my $total = 0;
    $total += $_ for @_;
    return $total;
}


