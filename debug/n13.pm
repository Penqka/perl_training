#!/usr/bin/perl

use warnings;
use strict;

my $lineno;
my $current = "";
our ($v, $h);

if ($v) {
    print "$0 - line numberer, version 3\n";
    exit;
}

if ($h) {
    print <<EOF;
$0 - Number lines in file

Usage : $0 [-h|-v] [filename filename...]

This utility prints out each line in a file to standard
output, with line numbers added.
EOF
    exit;
}

while (<>) {
    if ($current ne $ARGV) {
        $current = $ARGV;
        print "\n\t\tFile: $ARGV\n\n";
        $lineno = 1;
    }
    print $lineno++;
    print ": $_";
}