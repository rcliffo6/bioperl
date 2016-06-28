package DNA;

use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = ( "DNA_sequence");


  sub DNA_sequence {
    my @bases = qw/ A C G T /;
    my( $length , $random_length ) = @_;
    my $sequence = "";

    if ( $random_length ) {
      $length = int( rand( $length ));
    }

    foreach ( 1 .. $length ) {
        my $nucleotide = $bases[int(rand(4))];
        $sequence = $sequence.$nucleotide;
    }
    return $sequence;

