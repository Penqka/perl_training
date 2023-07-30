#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';


$/ = "";

open FH, "demo_file.txt" or die $!;

my @file = <FH>;

my $random = rand(@file);
say int $random;
my $fortune = $file[$random];
chomp $fortune;
print $fortune,"\n";