#!/usr/bin/perl

use warnings;
use strict;


my ($hours, $minutes, $seconds) = secs2hms(6868);

print "ARRAY $hours:$minutes:$seconds\n";

my $time = secs2hms(6868);

print "SCALAR: $time\n";

sub secs2hms {
    my ($h, $m);
    my $s = shift;
    $h = int($s / (60*60)); $s %= 60*60;
    $m = int($s / 60); $s %= 60;

    return ($h,$m,$s) if wantarray;
        return "$h:$m:$s\n";

}