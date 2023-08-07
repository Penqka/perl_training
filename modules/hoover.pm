#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use File::Find;



my $dirs = {};

sub print_name {
    my @dir = split('/', $File::Find::dir);
    unless (grep(/\.git/, @dir)) {

        unless (exists $dirs->{$dir[$#dir]}) {
            $dirs->{$dir[$#dir]} = [];
        }

    push @{$dirs->{$dir[$#dir]}}, $_;
    }

}

find (\&print_name, "//home/penko/perl/");



for my $key (keys %$dirs) {
    print "\t", $key, "\n";
    for my $val (@{$dirs->{$key}}) {
        print $val, "\n";
    }
    print "\n";
}

    # open FH, $_ or die "Could not open file $_: $!";