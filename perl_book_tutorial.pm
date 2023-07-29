#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';


my @months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", 'Oct');
my @sales = (112, 244, 2335, 6322, 111, 777, 546, 1235, 542,);

my %hash_months = @months;




for my $i (@months) {
    say $i;
}
