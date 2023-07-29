#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';


my $number = 100;
my @primes = ();

for my $current_number (2..$number) {
    
    my $is_prime = 1;
    
    for (2..sqrt($current_number)) {
        if ($current_number % $_ == 0) {
            $is_prime = 0;
            last;
            }
        }
    
    if ($is_prime) {
        push @primes, $current_number;
        }
    
}


say "prime nubers are :";
say join ", ", @primes;

