#!/usr/bin/perl

use warnings;
use CGI;
use CGI::Carp qw(carpout fatalsToBrowser);
use Apache::Session::File;


my $cgi = new CGI;
my $cookie = $cgi->cookie('MyCookie');

eval {
    tie %session, 'Apache::Session::File', $cookie,
        {Directory=>"/home/penko/cgi-tmp/"};
};

if ($@) {
    if ($@ =~/^Object does not exist in the data store/) {
        tie %session, 'Apache::Session::File', undef,
        {Directory=>"/home/tmp-cgi/"};
        
        $cookie = undef;
    } else {
        print $cgi->header('text/html', '503 Service Unavailable');
        die "Error : $@ ($!)";
        exit;
    }
}

unless ($cookie) {
    $cookie = $cgi->cookie (
        -name=>'MyCookie',
        -value=>$session{_session_id},
        -expires=>'+1d',
    );

    print $cgi->header(
        -type=>"text/html",
        -cookie=>$cookie
    );
} else {
    print $cgi->header();
}

print $cgi->start_html('Session Demo'),
        $cgi->h1("Hello, you are session id: ", $session{_session_id}),
        $cgi->end_html();

untie %session;