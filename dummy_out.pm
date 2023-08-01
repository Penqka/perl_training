#!/usr/bin/perl

use warnings;
use strict;

open (IN, "perl dummy_in.pm |") or *IN = *STDIN;


while (<IN>) {
    print "this is: $_";
}