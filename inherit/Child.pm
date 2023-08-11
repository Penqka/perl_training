package Child;

use strict;
use warnings;
use lib "/home/penko/perl/inherit/";
use Parent;

our @ISA = qw(Parent);

sub say_hi {
    return "Hi I am Child class";
}

sub say_bye {
    return "Bye from Child class";
}

1;




# my $obj_child = Child->new(
#     name=>"Child",
#     number=>"2",
# );


# print $obj_child->say_hi();