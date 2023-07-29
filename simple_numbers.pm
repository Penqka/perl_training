#!/usr/bin/perl 

use warnings;
use strict;
use feature 'say';
use Scalar::Util 'looks_like_number';




while (1) {
    say "Please enter a number (q=exit program):";
    my $input = <STDIN>;
    chomp $input;
    my @primes = ();


    last if $input eq 'q' && say "Bye!";
    
    unless (looks_like_number($input)) {
        say "please enter number";
        next;
        }

    if ($input < 1) {
        say "number cant be zero or less";
        next;
        }

    for my $current_number (2..$input) {
        
        if (is_prime($current_number)) {
            push @primes, $current_number;
        }
        
    }
    say "prime nubers are :". join ", ", @primes;
}



sub is_prime {
    my $arg_number = shift @_;
    my $is_prime = 1;
        for (2..sqrt($arg_number)) {
            if ($arg_number % $_ == 0) {
                return 0;
                }
            }
    return 1;
}
    
    