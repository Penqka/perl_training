#!/usr/bin/perl

use warnings;
use strict;



my $hash = {
    penko => {age => 29, city => 'Burgas'},
    nadq => [30, 'Aitos']
    };

my $arr = [
    [1,2,3],
    [4,[11,12,13],5,6],
    
];
print $hash->{penko}{age},"\n";
print $hash->{nadq}[0],"\n";

print $arr->[0][2], "\n";
print $arr->[1][1][1], "\n";


