#!/usr/bin/perl

use warnings;
use strict;

my $source = shift;
my $destination = shift;

open IN, "< $source" or die $!;

open OUT, "> $destination" or die $!;

my %rows = ();

my $current_row_no = 1;


foreach my $current_row (<IN>) {
    my $key = length $current_row; 

    unless (exists $rows{$key}) {
        $rows{$key} = [];
    }
    
    push @{$rows{$key}}, $current_row;
        
    $current_row_no++;
}

foreach my $key (sort keys %rows) {

    foreach my $i ( @{$rows{$key}} ) {
        my @sentaces = split /\n/, $i;
        
        foreach my $sentace (@sentaces) {
            print OUT "$key: $sentace, \n";
        }
    }
}

