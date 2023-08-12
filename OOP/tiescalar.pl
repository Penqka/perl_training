#!/usr/bin/perl

use strict;
use warnings;
use FindBin;
use lib $FindBin::Bin;
use Autoincrement;

my $count;

tie $count, 'Autoincrement';

print $count,"\n";
print $count,"\n";
print $count,"\n";
print $count,"\n";
print $count,"\n";

