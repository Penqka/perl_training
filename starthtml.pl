#!/usr/bin/perl

use strict;
use warnings;
use CGI qw(Link myheadertag);

my $cgi = new CGI;

print $cgi->header();
print $cgi->start_html(
    -title=>"Complex HTML Header",
    -author=>"pepi pepsito",
    -xbase=>"http://www.perl.org",
    -target=>"_map_panel",
    -meta=>{
        keywords=>'CGI header HTML',
        description=>'How to make a big header',
        message=>'Hello World',
    },
    -style=> { src=>'/style/fourthage.css' },
    -head=>[
        Link ({
            -rel=>'origin',
            -href=>'http://google.com'
            }),
        
        myheadertag => ({ -myattr=>'myvalue' }),
    ]
);

print $cgi->end_html();