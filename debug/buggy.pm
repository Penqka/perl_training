#!/usr/bin/perl

use strict;
use warnings;

my %hash;

my %options = (
    o => \&options,
    r => \&read,
    l => \&list,
    w => \&write,
    d => \&delete,
    x => \&clear,
);

while (1) {

    print "What would you like to do? ('o' for options): ";
    $_ = <STDIN>;
    chomp $_;

    last if /^q/i;

    unless (exists $options{$_}) {
        print "Sorry, not a recognized opiton.\n";
        next;
    }

    $options{$_}->();
}

sub options {
    print <<EOF
    Options avaliable:
    o - view options
    r - read entry
    l - list all entries
    w - write entry
    d - delete entry
    x - delete all entries
EOF
}

sub read {
    my $keyname = getkey();

    if (exists $hash{$keyname}) {
        print "Element '$keyname' has value ", $hash{$keyname},"\n";
    } else {
        print "Sorry, this element does not exist.\n";
    }
}

sub list {
    print "$_ => ", $hash{$_},"\n" for sort keys %hash;
}

sub write {
    my $keyname = getkey();
    my $keyval = getval();
    
    if (exists $hash{$keyname}) {
        print "Sorry this element already exists.\n";
    } else {
        $hash{$keyname} = $keyval;
    }
}

sub delete {
    my $keyname = getkey();
    if (exists $hash{$keyname}) {
        print "This will delete the entry $keyname.\n";
        delete $hash{$keyname};
    }
}   

sub clear {
    undef %hash;
}

sub getkey {
    print "Enter key name of element: ";
    $_ = <STDIN>;
    chomp $_;
    return $_;
}   

sub getval {
    print "Enter value name of element: ";
    $_ = <STDIN>;
    chomp $_;
    return $_;
}