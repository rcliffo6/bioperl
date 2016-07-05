#!/usr/bin/perl

use warnings;
use strict;

use CGI(':standard');

=pod
  This script will print out a form on the server, asking
  the client whether she wants a random DNA or protein sequence
  of length 50. It contains one radio button. The default is
  DNA. After the client chooses, the program calculates either
  sequence and prints on the screen.
  I tried to put a reset button or default, but couldn't get
  it to work, so that I "commented it out" (see below).
=cut


my $length = 50;
my $title = 'Random DNA or Protein Sequence of length 50';
my $DNA = '';
my $protein = '';

# processing of submission form
if (param('submit')) {
   my $sequence = param ('sequence');
}

print header,
   start_html($title),
   h1($title);


# handle processing of form for submission
# depending on whether the DNA radio button or the protein radio button
# is pressed. The submit button will fashion a random sequence of either
# amino acids or nucleotides
while ( param ('submit')) {
      if (param('sequence') eq 'DNA') {
         my @bases = qw/ A C G T /;
            foreach (1 .. $length) {
               $DNA  .= $bases[int(rand(4))];
            }      
      }
      else  {
         my @aa = qw/ a g i l p v f w y d e r h k s t c m n q /;
            foreach (1 .. $length) {
               $protein  .= $aa[int(rand(20))];
         }
      }
  
  # the choice of proteins or DNA will be printed out
   print p( "Your choice is a random param('sequence') sequence:\n"),
      if (defined $DNA) {
         print p ("$DNA");
      }
      else  {
         print p ("$protein");
      }
hr();    
}

# print out base form
  my $url = url();

   print start_form (-method => 'GET', action => $url),
   p ("What's your choice:" .radio_group (-name => 'sequence', -values => ['DNA','protein'], -default => 'DNA')),
   p(submit (-name => 'submit', -value => 'Submit')),
   # p(reset (-name => ‘reset’, -value=>’Reset Form’)),
   end_form(),
   end_html();
