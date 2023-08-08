#!/usr/bin/perl

use strict;
use warnings;
use Benchmark;


my $howmany = 100;

timethese($howmany, {
    line => sub {
        my $file;
        open TEST, "pod_igoto.txt" or die $!;
        while (<TEST>) { $file .= $_; }
        close TEST;
    },

    slurp => sub {
        my $file;
        local undef $/;
        open TEST, "pod_igoto.txt" or die $!;
        $file = <TEST>;
        close TEST;
    },
    join => sub {
        my $file;
        open TEST, "pod_igoto.txt" or die $!;
        $file = join " ", <TEST>;
        close TEST;
    }
});