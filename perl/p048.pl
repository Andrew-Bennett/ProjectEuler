#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $ans = 0;

for(my $i = 1; $i <= 1000; $i++) {
  $ans += substr(($i**$i), -10);
}
print(substr($ans,-10), "\n");
