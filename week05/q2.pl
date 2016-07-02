#! /usr/bin/perl

use strict;
use warnings;

use Storable;

# this program generates 10 random DNA 50mers
# Storable writes these 50mers to disk in separate files
# a script will then read the 50mers from memory
# and print out the sequences containing 4mer runs
# of identical bases

my @bases = qw / A C T G /;
my $length = 50;
my $DNA_sequence = '';

# create individual files numbered 1-10
foreach my $i (1 .. 10) {
   foreach (1 .. $length) {
      $DNA_sequence .= $bases[int(rand(4))];
   }
 store (\$DNA_sequence, "DNA_file$i") or die "Can't store it.";
   $DNA_sequence = '';
}


# retrieve DNA files, and if they contain
# a run of 4 identical bases, print out
# this information

for my $j (1 .. 10) {
   my $retrieve_file = retrieve ("DNA_file$j");
   my $filename = "DNA_file".$j;
   # print Dumper ("$$retrieve_file");
   foreach my $base (qw/ A T G C / ) {
      if ( $$retrieve_file =~ /$base{4}/ ) {
         print "$base run found in $filename\n";
      }
   }
}
