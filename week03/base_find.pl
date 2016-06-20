#! /usr/bin/perl

use strict;
use warnings;
use feature qw { switch };

#this file will go through 10 files named output1 through output10
#it will find runs of at least 4 identical bases in them

for my $i (1 .. 10) {
   my $file = "output$i";
   open (my $IN, '<', $file) or die ("Can't open $file ($!)");
   while (my $line = <$IN> ) {
       chomp $line;

       given ($line) {
           when  ( /A{4}/ )   {  print "A run found in .\/seq${i}\n"; }
           when ( /T{4}/)    { print "T run found in .\/seq${i}\n"; }
           when  ( /G{4}/ )   { print "G run found in .\/seq${i}\n"; }
           when ( /C{4}/ )   { print "C run found in .\/seq${i}\n"; }
       }
    }
}
