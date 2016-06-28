#! /bin/usr/perl

# I couldn't get past the reference for the arrays to the values themselves, although I tried 
# all sorts of permutations of @$arrayref_$i[$j]

use warnings;
#use strict;

# hard-coded hash of arrays
# print out hash of arrays when run

my @array1 = ('ATA', 'GTA', 'CTG');
my $arrayref_1 = \@array1;

my @array2 = ('GAG', 'CGG', 'CTT');
my $arrayref_2 = \@array2;

my @array3 = ('TAG', 'TCG', 'ATG');
my $arrayref_3 = \@array3;

my %hoa = (first_triplet => \$arrayref_1, second_triplet => \$arrayref_2, third_triplet => \$arrayref_3);
my $hoa_ref = \%hoa;

# print out hash of arrays
foreach ( keys %$hoa_ref ) {
   foreach my $i (0 .. 2) {
       print "$_ ==  ${hoa_ref} [$i]\n"
   }
}
