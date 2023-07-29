use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use lib "lib";
use Animal::Cat;

my $Tom = new Animal::Cat('Tom', 'Penko');


say $Tom->getName();

