#!/usr/bin/perl

use warnings;
use strict;

my @chessboard;
my @back = qw(R N B Q K N B R);

for (0..7) {
    $chessboard[0]->[$_] = "W" . $back[$_];
    $chessboard[1]->[$_] = "WP";
    $chessboard[6]->[$_] = "BP";
    $chessboard[7]->[$_] = "B" . $back[$_];
}

while (1) {
    
    for my $i (reverse(0..7)) {
        for my $j (0..7) {
            if (defined $chessboard[$i]->[$j]) {
                print $chessboard[$i]->[$j];
            } elsif ( ($i %2) == ($j %2) ) {
                print "..";
            } else {
                print "  ";
            }
        print " ";
        }
    print "\n";
    }

    print "\nStarting square[x,y]: ";
    my $move = <>;
    last unless ($move =~ /^\s*([1-8]),([1-8])/);
    my $startx = $1-1; my $starty = $2-1;

    unless (defined $chessboard[$starty]->[$startx]) {
        print "There's nothuing on that square!\n";
        next;
    } 
    print "\nEnding square[x,y]: ";
    $move = <>;
    last unless ($move =~ /^\s*([1-8]),([1-8])/);
    my $endx = $1-1; my $endy = $2-1;

    $chessboard[$endy]->[$endx] = $chessboard[$starty]->[$startx];

    undef $chessboard[$starty]->[$startx];
}