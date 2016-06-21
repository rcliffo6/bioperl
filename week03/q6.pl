#!/bin/usr/perl

#use strict;
use warnings;

# Note from Royce - I know this doesn’t solve the problem. 
# I can’t figure out how to put in a $variable into a regex
# the logic is incorrect - it produces false all the time.
# if I put a real value into the search, like "oo", it recognizes
# false, and exit, but not true.

# a regexpression debugger:
# code asks for a regex, then tests the user input
# against that expression, and reports whether it
# matches or not. It has an 'exit' command

print "Enter regexp: ";
my $input = <STDIN> ;

print "Enter string or 'exit' to exit; ";
my $expression = <STDIN> ; 

while ( $expression ne “exit” ) {
           if ( $expression =~ m/$input/ ) {
                 print "Match!\nEnter string or 'exit' to exit; ";
                 $expression = <STDIN> ;
              }
              else {
                 print "No match!\nEnter string or 'exit' to exit; ";
                 $expression = <STDIN> ;
              }
}
print "bye bye!\n";
exit;
