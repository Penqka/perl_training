#!/usr/bin/perl

use strict;
use warnings;
use CGI::Pretty qw(:standard);



print 
header(),
start_html("Encviroment Dumper"),
table({-border=>1},
    Tr(th(['Parameter', 'Value'])),
        map {
        Tr(td([$_,$ENV{$_}]))   
        } sort keys %ENV 
        ),
    
end_html();3