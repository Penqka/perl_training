#!/usr/bin/perl

use warnings;
use strict;

sub change_endline {
    my @buffer = ();
    my $source = shift;
    open OUTPUT, "> changed_text.txt" or die $!;
    
    open TEXT, "< $source" or die $!;

    while (<TEXT>) {
        $_ =~ s/[\.!\?…]+/*****/g;
        push @buffer, $_;
}

    print OUTPUT @buffer;    
}

change_endline("pod_igoto.txt");