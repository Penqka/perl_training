#!/usr/bin/perl

use warnings;
use strict;
use FindBin;
use lib $FindBin::Bin;
use person1;

my $person = Person->new(
    surname => "Dimitrov",
    forename => "Penko",
    address => "Burgas",
    occupation => "Developer",
);

print $person->forename();
# print Person->surname;

# print "old address:", $person->address();
# $person->address("Sofia");
# print "new address:", $person->address();
