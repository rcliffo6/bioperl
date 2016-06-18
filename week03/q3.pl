#! /usr/bin/perl

use strict;
use warnings;

# this script writes a random DNA sequence of length 50

my @DNA = ('A','C','G','T');

for (my $i=0 ; $i <=50 ; $i++ ) {
   my $nucleotide = int(rand @DNA );
   print $DNA[$nucleotide];
}
print "\n";
