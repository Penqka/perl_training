#!/usr/bin/perl

use warnings;
use CGI::Push qw(:standard);
use strict;

my $line = "";
do_push(-next_page=>\&refresh);

sub refresh {
    my ($cgi, $count) = @_;

    my $page = start_html().p("The count is $count");
    
    if (length($line)>9) {
        $line = "";
    } else {
        $line .="*";
    }

    $page .= p($line."\n").end_html();

    return $page
}