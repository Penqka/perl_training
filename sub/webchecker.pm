#!/usr/bin/perl

use warnings;
use strict;

my %seen;

print "Web Checker, versiom 1.\n";
die "Usage: $0 <strating point> <site base>\n" 
    unless @ARGV  == 2;

my ($start, $base) = @ARGV;
$base .= "/" unless $base =~ m|/$|;

die "$start appears not te be in $base\n"
    unless in_our_site($start);

traverse($start);

sub traverse {
    my $url = shift;
    # $url =~ s|/$|index.html|;

    return if $seen{$url}++;

    my $page = get($url);
    if ($page) {
        print "Link OK: $url\n"; 
    } else {
        print "Link dead: $url\n";
        return;
    }
    
    return unless in_our_site($url);

    my @links = extract_links($page, $url);

    return unless @links;

    for my $link (@links) {
        traverse($link);
    }
}

sub in_our_site {
    my $url = shift;
    return index($url, $base) == 0;
}

sub get {
    my $what = shift;
    sleep 5;
    return `lynx -source $what`;
}

sub extract_links {
    my ($page, $url) = @_;
    my $dir = $url;
    my @links;

    $dir =~ s|(.*)/.*?$|$1|;

    for (@links = ($page =~/<A HREF=["']?([^\s"'>]+)["']?/gi)) {
        $_ = $base.$_ if s|^/||;
        $_ = $dir."/".$_ if !/^(ht|f)tp:/;
    }
    
    return @links


}




