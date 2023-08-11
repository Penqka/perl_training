package Parent;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = {@_};
    bless $self, $class;
    return $self;
}


sub say_hi {
    return "Hi I am Parent class";
}

1;