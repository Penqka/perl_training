#!/usr/bin/perl

use warnings;
use strict;
my $counter = 0;

sub fibonacci (\@){
    my $arr = shift;
    # print "starting array: @$arr\n";

    my $result = @$arr[scalar @$arr - 2] + @$arr[scalar @$arr-1];
    push @$arr, $result;
    # print "result is : $result\n";
    # print "this is counter : $counter\n";
    # print "end array : @$arr\n";
    # print "\n";

    if (++$counter == 10) {
        print join ", ",@$arr;
        print "\n";
        return;
    }

    fibonacci($arr);

} 

my @start = (1,1);
fibonacci(@start);