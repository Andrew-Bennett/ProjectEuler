#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $count = 2;
my @vals = (0,1);

while(1) {
  push @vals, ($vals[-1] + $vals[-2]);
  die $count if $vals[-1] =~ m/\d{1000}/;
  $count++;
}
