#!/usr/bin/perl 

use warnings;
use strict;
use feature 'say';

my $logging = shift;

if ($logging eq "file") {
    open LOG, "> logfile.log" or die $!;
    select LOG;
}

print "Program started: ", scalar localtime. "\n";
sleep 3;
print "Program finished: ", scalar localtime. "\n";

select STDOUT;