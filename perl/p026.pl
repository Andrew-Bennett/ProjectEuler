#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $ans = 0;

for(my $i = 1; $i < 1000; $i++) {
  $ans = $i ** $i;
}
$ans += 1000**1000;
print("Full Number: \n $ans \n");
print("Answer: \n");
print(substr($ans, -10), "\n");
