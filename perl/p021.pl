#!/usr/bin/perl
use Modern::Perl;
my $sum = 0;
foreach my $num(1..10000) {
  $sum += $num if (amicablePair($num));
}

say $sum;

sub sumOfProperDivisors {
  my $num = shift;
  my $divisor = shift // $num - 1;
  my $sum = shift || 0;

  return 1 unless $num > 1;
  return $sum unless $divisor;

  $sum += $divisor unless $num % $divisor;

  @_ = ($num, ($divisor - 1), $sum);
  goto &sumOfProperDivisors;

}

sub amicablePair {
  return ( $_[0] != sumOfProperDivisors( $_[0] ) 
    and sumOfProperDivisors( sumOfProperDivisors( $_[0] ) ) == $_[0] )
    ? 1
    : 0;
}

__END__
