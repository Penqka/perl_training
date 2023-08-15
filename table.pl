#!/usr/bin/perl

use strict;
use warnings;

use CGI::Pretty;


print "Content-type: text/html\n\n";

# print "<h1>hi</h1>";
my $cgi=new CGI;

print $cgi->start_html(
    -title=>"Table HTML!",
    );

print $cgi->table({ -border => 1, -cellspacing => 3, -cellpadding => 3 },
    $cgi->Tr({ -align => 'center', -valign => 'top' },
        [
            $cgi->th(['Column1', 'Column2', 'Column3']),
        ]
    ),

    $cgi->Tr({ -align => 'center', -valign => 'middle' },
        [
            $cgi->td(['Red', 'Blue', 'Yellow']),
            $cgi->td(['Cyan', 'Orange', 'Magenta']),
            $cgi->td({ -colspan => 3 }, ["A wide row"]),
        ]
    ),

    $cgi->caption("An example table")
);
