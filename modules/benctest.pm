#!/usr/bin/perl

use strict;
use warnings;
use Benchmark;




timethis(100000, q/my $j = 1; for (1..100) { $j *= $_ }/);
