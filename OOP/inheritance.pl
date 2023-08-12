#!/usr/bin/perl

use warnings;
use strict;
use lib "/home/penko/perl/OOP/";
use Employee;


my $employee = Employee->new(
    surname => "Todorov",
    employer => "Dogbert",
    salary => "1550",
);


my $boss = $employee->employer;
$boss->address("Plovdiv");

my $dogbert = Employee->new (
    surname => "Dogbert",
    emplyer => "7777",
    salary=>$employee->salary * 2,
);

$employee->employer($dogbert);


