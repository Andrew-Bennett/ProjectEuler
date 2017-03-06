#!/usr/bin/perl

use Math::BigInt lib => 'FastCalc';
use POSIX;

sub isAbundant {
  my $n = shift;
  return (dS($n) > $n) ? 1 : 0;
}

sub dS {
  my ($n) = @_;
  my $sum = 0;
  for($j = 1; $j < ceil($n/2)+1; $j++) {
    if($n%$j==0) {
      $sum += $j;
    }
  }
  return $sum;
}

$sum = 0;
for($i = 0; $i <= 28123; $i++) {
  $hasDoubleSum = 0;
  $as{$i} = 1 if isAbundant($i);
  foreach $a (sort(keys %as)) {
    last if $a > $i;
    $hasDoubleSum = 1 if($as{$i-$a});
  }
  $sum += $i if(!$hasDoubleSum);
}
print $sum . "\n";

