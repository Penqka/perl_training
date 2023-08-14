#!/usr/bin/perl

use strict;
use warnings;

print "Content-Type: text/html\n\n";

print 
"<html>
    <head>
        <title>Enviroment Dumper</title>
    </head>

    <body>


        <center>
            <table border=1>";

                foreach (sort keys %ENV) {
                    print 
                        "<tr>
                            <td>$_ : $ENV{$_} </td>
                        </tr>";        
                }

print "</table></center></body></html>";
    
    
    
    