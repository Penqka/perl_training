#!/usr/bin/perl

use strict;
use warnings;
use CGI qw(:all);

$CGI::POST_MAX = 100;

$ENV{'PATH'} = "/bin";

print header(), start_html("Send yourself a greeting");

my $mail_to = param('email');

if (not $mail_to or $mail_to !~ /\@/) {
    print start_form,
        h2('Please enter email addres'),
        p(textfield('email')),
        p(submit),
        end_form();

} elsif ($mail_to =~ tr/;<>*:`&$!#{}[]'"//) {
    print h2("Invalid address");

} else {
    # run external email program 

    print p("Your mail is: $mail_to");
}

print end_html();




