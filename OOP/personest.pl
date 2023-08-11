#!/usr/bin/perl

use warnings;
use strict;
use FindBin;
use lib $FindBin::Bin;
use Person;

my $person = Person->new(
    surname => "Dimitrov",
    forename => "Penko",
    address => "Burgas",
    occupation => "Developer",
);


my $person2 = Person->new(
    surname => "Ivanov",
    forename => "Vanko",
    address => "Sofia",
    occupation => "DevOp",
);

# print "There are: ", $person2->headcount(), " people\n";


# for my $i (Person->everyone()) {
#     print $i->{forename}, " ", $i->{surname}, "\n";
# }


my $message = "Plati si toka neshtastink!";
$person2->print_letter($message);