#!/usr/bin/perl

use warnings;
use CGI;
use Fcntl qw(:flock); #for file locking symbols

my $msgfile = "/home/cgi-tmp/state.msg";
my $cgi = new CGI;

print $cgi->header(), $cgi->start_html("Stateful CGI Demo");

if (open (LOAD, $msgfile)) {
    flock LOAD, LOCK_SH; # shared lock (not on windows)
    my $oldcgi = new CGI(LOAD);
    flock LOAD, LOCK_UN; # release lock

    close (LOAD);

    if (my $oldmsg = $oldcgi->param('message')) {
        print $cgi->p("The previous message was: $oldmsg");
    }
}

if (my $newmsg = $cgi->param('message')) {
    print $cgi->p("The current message is: $newmsg");
    if (open (SAVE, "> $msgfile")) {
        flock SAVE, LOCK_EX; # exclusive lock
        $cgi->save(SAVE);
        flock SAVE, LOCK_UN; #release lock
    
    } else {
        print $cgi->font({-color=>'red'}, "Failed to save: $!");
    }
}

print $cgi->p("Enter a new message");
print $cgi->start_form(-method=>'GET'),
      $cgi->textfield('message'),
      $cgi->submit({-value=>'Enter'}),
      $cgi->end_form();

print $cgi->end_html();
