#!/usr/bin/perl

use warnings;
use strict;

sub total {
    my $total = 0;
    $total += $_ for @_;
    $total;
}

my $result = total(1,2,3,4);

print $result, "\n";

