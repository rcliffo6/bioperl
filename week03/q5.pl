#!/bin/usr/perl

use strict;
use warnings;

# write function to generate random DNA sequences of given length
# argument is length of sequence that is returned
# second optional argument produces a sequence of random length
# between 1 and first argument

DNA_product (50, 50 );

sub DNA_product {

   my (@args) = ( @_ );

   # for random DNA sequence, the number is between 0 and DNA length {x}
   my $seq_length = $args[0] + int (rand $args[0]);
   my @DNA = ('A','C','G','T');

   for ( my $i = 1; $i <= 10; $i++)  {

      #open a file for printing
      my $file = "./output$i";
      open (my $OUT, '>', $file) or die ("Can't open FILENAME ($!)");

      if ($#args == 0)  {
         foreach (1 .. $args[0] ) {
            my $nucleotide = int(rand @DNA );
            print $OUT "$DNA[$nucleotide]";
         }
      }

      else {
         foreach (1 .. $seq_length) {
            my $nucleotide = int (rand @DNA );
            print $OUT "$DNA[$nucleotide]";
         }
      }
   close $OUT;
   }
}

