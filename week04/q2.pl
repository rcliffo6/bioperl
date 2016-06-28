#! /usr/bin/perl

use strict;
use warnings;

use DNA ('DNA_sequence' );

my $length = 50;
my $random = 1;


print "random sequence =  ", DNA_sequence( $length ), "\n";
print "random sequence =  ", DNA_sequence ($length, $random), "\n";
