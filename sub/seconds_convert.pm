#!/usr/bin/perl

use warnings;
use strict;


sub ask_usr {
    print "Hello please enter seconds: ";
    my $seconds = <>;
    chomp $seconds;
    
    my $result = secs2hms($seconds);
    print "Your result is: $result\n";
    
    
}

sub secs2hms {
    my ($h, $m);
    my $s = shift;
    $h = int($s / (60*60)); $s %= 60*60;
    $m = int($s / 60); $s %= 60;

    return ($h,$m,$s) if wantarray;
        return "$h:$m:$s";

}

ask_usr();