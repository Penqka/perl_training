#!/usr/bin/perl

use warnings;
use strict;

opendir DIR, "." or $!;

while ($_ = readdir(DIR)) {
    next if $_ eq "." or $_ eq "..";
    print "$_ - ", -s $_, " bytes\n";
    }
