#!/usr/bin/perl

use warnings;
use strict;
use File::Find;

find ( \&callback, ".");

sub callback {
    print $File::Find::name, "\n";
}
