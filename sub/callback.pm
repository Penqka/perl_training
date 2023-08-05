#!/usr/bin/perl

use warnings;
use strict;

my $counter = 0;

sub sub1 {
    print "SUB 1 $counter|";
    return if $counter++ == 50;
     
    sub2();
}
sub sub2 {
    print "SUB 2 $counter|"; 
    return if $counter++ == 50;
    sub3();
}
sub sub3 {
    print "SUB 3 $counter|";
    return if $counter++ == 50;
    sub1(); 
}

sub1();