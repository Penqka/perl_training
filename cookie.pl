#!/usr/bin/perl

use warnings;
use CGI qw(:standard);
use strict;

my $cookie = cookie('MyCookie');

if ($cookie) {
    print header();
} else {
    my $value = generate_unique_id();
    $cookie=cookie(
        -name=>"MyCookie",
        -value=>$value,
        -expires=>"+1d"    
    );
    print header(
        -type=>"text/html",
        -cookie=>$cookie
        );
}

sub generate_unique_id {
    return sprintf("%08.8x", rand()*0xffffffff);
}