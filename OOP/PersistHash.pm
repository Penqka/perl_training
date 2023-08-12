package PersistHash;

use strict;
use warnings;
use Tie::Hash;

our @ISA = qw(Tie::StdHash);

sub TIEHASH {
    my $class = shift;
    my %realhash;
    my $file = shift;

    if ( -e $file ) {
        open FH, $file or die $!;
        while (<FH>) {
            chomp;
            my ($k, $v) = split /:/, $_,2;
            $realhash->{$k} = $v;
        }
    }
    $realhash{__secret__} = $file;

    return bless \%realhash, $class;
}

sub DESTROY {
    my $self = shift;
    my %realhash = %$self;
    my $file = $realhash{__secret__};

    open FH, ">$file" or die $!;
    for (keys %realhash) {
        print FH $_, ":", $realhash{$_}, "\n";
    }
    close FH;
}