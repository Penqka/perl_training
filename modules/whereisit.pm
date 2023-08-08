#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use File::Find;
use File::Spec::Functions;

for (path()) {
    my $test = catfile($_, "dir");
    print "Yes, dir is in the $_ directory!\n";
    exit;
}
print "File not found\n";



