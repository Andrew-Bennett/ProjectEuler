#!/usr/bin/perl

sub fib {
  my $n = shift;
  $n < 2 ? $n : fib($n - 1) + fib($n - 2);
}

for($i = 0; $i < 1000; $i++) {
  fib($i);
}
