#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

open FH, "demo_file.txt" or die "FILE NOT FOUND: $!";

my @buffer = ();

while (<FH>) {
    push @buffer, $_;
    shift @buffer if @buffer > 2;
}

print "Last 2 lines:\n", @buffer;