#!/usr/bin/perl
use strict;
use warnings;
use DBI;
use HTML::Template;


# DB CONNECTION

my $database = 'test_db';
my $host = 'localhost';
my $port = '3306';
my $username = 'test_user';
my $password = '61902812';
my $table = 'users';

# Template 

my $template = HTML::Template->new(filename => 'users_list.html');


my $DB = DBI->connect(
    "DBI:mysql:database=$database;host=$host;port=$port", $username, $password
    )
    or die "Can not connect to DB: $DBI::errstr";


my $stmt = $DB->prepare(
    "SELECT * from $table"
);

$stmt->execute();



my @buffer;

while (my $row = $stmt->fetchrow_hashref) {
    push @buffer, $row;
};

$template->param(USERS_LOOP => \@buffer);

my $output = $template->output;


$DB->disconnect;