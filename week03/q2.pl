#!/usr/bin/perl

use strict;
use warnings;

mult_table (x => 5);

sub mult_table {
   my (%args ) = ( @_ );

   for ( my $i = 1; $i <= $args{x}; $i++ ) {
     for ( my $j = 1; $j <= $args{x}; $j++ ) {
         print $i*$j;
         print "   ";
     }
     print "\n";
   }
   }
