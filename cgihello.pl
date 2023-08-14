#!/usr/bin/perl

use strict;
use warnings;

print "Content-Type: text/plain\n\n";
print "hello cgi world\n";

my $address = $ENV{X_FORWARDED_FOR} || $ENV{REMOTE_ADDR} || "";
print "you are calling from", $address,"\n";

for my $key (keys %ENV) {
    print $key, " - ", $ENV{$key}, "\n";
}