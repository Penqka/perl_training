#!/usr/bin/perl

use warnings;
use strict;
use lib "/home/penko/perl/OOP/";
use Employee;


my $employee1 = Employee->new(
    surname => "Todorov",
    forename => "Mitko",
    address => "Varna",
    occupation => "PM",
);


$employee1->salary(1000);
print "inital salary: ", $employee1->salary(),"\n";
$employee1->raise(500);
print "new salary: ", $employee1->salary(),"\n";
