#!/usr/bin/perl

use strict;
use warnings;
use CGI::Pretty qw(:all);

print header();
print generate_form();
print end_html();


sub generate_form {
    return start_form,
        h1("Please enter your name:"),
        p('Last name', textfield('last')),
        p('First name', textfield('first')),
        p(submit),
        end_form;
}