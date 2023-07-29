#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

$a = "Awake! Penko! Fear, Fire, Foes! Awake, Fire, Foes!";

$a =~ s/(?<!,)\s/\n/g;

say $a;