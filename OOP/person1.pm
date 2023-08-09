package Person;

use warnings;
use strict;
use Carp;

sub new {
    my $class = shift;
    my $self = {@_};
    bless ($self, "Person");
    return $self;
}

sub surname {
    my $self = shift;
    unless (ref $self) {
        croak "Should call surname() with an object not a class";
    }
    return $self->{surname};
}

sub address {
    my $self = shift;
    unless (ref $self) {
        croak "Should call addres() with an object not a class";
    }
    my $data = shift;
    $self->{address} = $data if defined $data;

    return $self->{address}
}

sub forename {
    $_[0]->{forename} = $_[1] if defined $_[1];
        $_[0]->{forename};
}

1;


