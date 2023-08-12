package Autoincrement;

use warnings;
use strict;

sub TIESCALAR {
    my $class = shift;
    my $realdata = 0;
    return bless \$realdata, $class;
}

sub FETCH {
    my $self = shift;
    return $$self++;
}

sub STORE {
    my $self = shift;
    $$self = 0;    
}


1;