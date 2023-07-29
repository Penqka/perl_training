#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my $lineno = 1;
my $current_file = "";

while (<>) {
    if ($current_file ne $ARGV) {
        $current_file = $ARGV;
        say "\n\n\t |$ARGV|\n";
        $lineno = 1;
    }
  
    print $lineno++, ": $_";
}
