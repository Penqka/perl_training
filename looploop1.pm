#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my @getout = qw(quit leave stop finish);

OUTER: while (<STDIN>) {
    chomp;
    INNER: for my $check (@getout) {
        last OUTER if $check eq $_;
    }
    say "Hey you said: $_";
}
say "Bye!"