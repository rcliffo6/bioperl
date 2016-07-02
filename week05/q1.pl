#! /usr/bin/perl

use warnings;
use strict;

my @array1 = (1,2,3,4);
my @array2 = (5,6,7,8);

my $ref1 = \@array1;
my $ref2 = \@array2;

sub matrix_mult {
   my ($ref1, $ref2) = @_;
   my @return_array;

   foreach my $i  ( 0 .. $#{$ref1} )  {
      foreach my $j ( 0 .. $#{$ref2} ) {
         $return_array[$i][$j] = ${$ref1}[$i] * ${$ref2}[$j];
      }
   }
   my $ref_array = \@return_array;
   return $ref_array;
}

# dereference returned array reference
my $refz = matrix_mult ($ref1, $ref2);
my @ar_ret = @$refz;

# print out dereferenced array
foreach my $row (0 .. $#ar_ret ) {
   foreach my $column (0 .. $#{$refz}) {
      print $ar_ret[$row][$column], "   ";
   }
   print "\n";
}

 
