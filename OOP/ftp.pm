#!/usr/bin/perl

use warnings;
use strict;
use Net::FTP;

my $ftp = Net::FTP->new("ftp.cpan.org") 
    or die "Could not connect: $@\n";

$ftp->login("anonymous");
$ftp->cwd("/pub/CPAN");
$ftp->get("README.html");
$ftp->close;
