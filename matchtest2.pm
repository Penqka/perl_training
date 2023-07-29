#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

$_ = '1: A silly sentence (495,a) *BUT* one which will be useful. (3)';

my $pattern = '(\s[a-z]+)';



while (/$pattern/g) {
    my $b = $1;
    $b =~ s/\s//;
    say "$b pattern matched";
} 

unless (/$pattern/g) {
    say 'not found';
}