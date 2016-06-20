#!/bin/usr/perl

use strict;
use warnings;


# write function to generate random DNA sequences of given length
# argument is length of sequence that is returned
# second optional argument produces a sequence of random length 
# between 1 and first argument

DNA_product (50,30 );

sub DNA_product {

   my (@args) = ( @_ );

   # for random DNA sequence, the number is between 0 and DNA length {x}
   my $seq_length =  rand $args[0] + 1;
   my @DNA = ('A','C','G','T');

   if ($#args == 0)  {
      for (my $i=0 ; $i <= $args[0]; $i++ ) {
         my $nucleotide = int(rand @DNA );
         print $DNA[$nucleotide];
      }
   }

   else {
      for (my $j = 0; $j <= $seq_length; $j++) {
         my $nucleotide = int (rand @DNA );
         print $DNA[$nucleotide];
      }
   }
print "\n";
}
