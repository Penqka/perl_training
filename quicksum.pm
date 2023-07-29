#!/usr/bin/perl 

use warnings;
use strict;
use feature 'say';

my $total = 0;

$total += $_ for @ARGV;

say "total sum is: $total";

foreach (@ARGV) {
    say "Element is: |$_|";
}