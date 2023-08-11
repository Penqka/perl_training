package Person;

use warnings;
use strict;
use Carp;

my @Everyone;

# Constructor and initalisation

sub new {
    my $class = shift;
    my $self = {@_};
    bless ($self, $class);
    # $self->_init() if $class eq "Person";
    return $self;
}

# sub _init {
#     my $self = shift;
#     push @Everyone, $self;
#     carp "New object created!";
# } 

# Object accessor methods
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

sub occupation {
    $_[0]->{occupation} = $_[1] if defined $_[1];
        $_[0]->{occupation}; 
}

# Class accessor methods
sub headcount { scalar @Everyone }
sub everyone { @Everyone }

# Utility methods

sub fullname { $_[0]->{forename}." ". $_[0]->{surname}; }

sub print_letter {
    my $name = $_[0]->fullname();
    my $address = $_[0]->address();
    my $forename = $_[0]->forename();
    my $body = $_[1];
    my @date = (localtime) [3,4,5];
    $date[1]++;
    $date[2] += 1900;
    my $date = join"/", @date;

    print <<EOF
$name
$address
$date

Dear $forename,
$body
Yours faithfully,
EOF
}


1;


