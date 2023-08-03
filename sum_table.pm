#!/usr/bin/perl

use warnings;
use strict;


# for my $r (1..6){
#     for my $c (1..6){
#         print $r*$c," ";
#     }
#     print "\n";
# }

my $table = [
    ['one', 'two', 'three', 'four', 'five', 'six'],
    ['two', 'four', 'six', 'eight', 'ten', 'twelve',],
    ['three', 'six', 'nine', 'twelve', 'fifteen', 'eighteen',],
    ['four', 'eight', 'twelve', 'sixteen', 'twenty', 'twenty four',],
    ['five', 'ten', 'fifteen', 'twenty', 'twenty five', 'thirty',],
    ['six', 'twelve', 'eighteen', 'twenty four', 'thirty', 'thirty six',],
];

while (1) {
    print "Enter two numbers: ";
    my $numbers = <>;
    chomp $numbers;
    last if ($numbers eq 'q');
    unless ($numbers =~ /^\s*([1-6]),([1-6])/) {
        print "Enter valid numbers\n";
        next;
    }
    print "Your result is: ";
    print $table->[$1-1][$2-1], "\n";
    next;
}

