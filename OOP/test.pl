#!/usr/bin/perl

use strict;
use warnings;
use lib "/home/penko/perl/OOP/";
use Child;



my $obj_child = Child->new(
    name=>"Child",
    number=>"2",
);


print $obj_child->say_hi(), "\n";
print $obj_child->say_bye(), "\n";
