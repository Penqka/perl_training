#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my $sentance = "i asm very wesll";

my @word_arr = split m|verry| ,$sentance;

for (@word_arr) {
    say $_;
}