package DNA;

use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = ( "DNA_sequence");

=pod
This module takes either one or two arguments. The first argument is the
length of the DNA sequence. The second argument is optional. If it exists,
then the length of the DNA sequence will be a random number of nucleotides
less than or equal to the first argument.
=cut

  sub DNA_sequence {
    my @bases = qw/ A C G T /;
    my( $length , $random_length ) = @_;
    my $sequence = "";

    if ( $random_length ) {
      $length = int( rand( $length ));
    }
 return $sequence;
