#! /bin/usr/perl

use strict;
use warnings;

use Test::Simple tests => 2;

use DNA 'DNA_sequence';

my $dna = DNA_sequence();

my $length = 50;

ok (length ($dna) == $length , "string length checks" );
ok ($dna =~ /^[ACGT]{$length}$/i , "string composition checks" );

# note - when I run the q2.pl program, which uses the module DNA,
# it works fine with or without the second argument. However,
# when I run q4.pl, the "test", it fails for both and tells me
#    1..2
#    Use of uninitialized value $length in foreach loop entry at DNA.pm line 19.
#    not ok 1 - string length checks
#    Failed test 'string length checks'
#    at q4.pl line 14.
#    not ok 2 - string composition checks
#    Failed test 'string composition checks'
#    at q4.pl line 15.
#    Looks like you failed 2 tests of 2.
