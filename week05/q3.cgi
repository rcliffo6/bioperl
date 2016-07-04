#!/usr/bin/perl

use warnings;
use strict;

use CGI(':standard');

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

# print out base form, including a reset button
  my $url = url();
print start_form (-method => 'GET', action => $url),
   p ("What's your choice:" .radio_group (-name => 'sequence', -values => ['DNA','protein'], -default => 'DNA')),
   p(submit (-name => 'submit', -value => 'Submit')),
   p(reset (-name => ‘reset’, -value=>’Reset Form’)),
   end_form(),
   end_html();
