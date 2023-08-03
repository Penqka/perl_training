#!/usr/bin/perl

use warnings;
use strict;


my $option = shift;

version() if $option eq "-v" or $option eq "--version";
print "Hello World\n";



sub version {
    print "Beginning Perl's \"Hello World.\" version 2.0\n";
}


