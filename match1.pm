#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

$_ = "I wonder wha the Entish is for 'yes' and 'no', he tought.";

say 'Enter some text to find:';
my $pattern = <STDIN>;
chomp $pattern;

/$pattern/ ? say "Text matches the pattern '$pattern'" : say "'$pattern' not found";  