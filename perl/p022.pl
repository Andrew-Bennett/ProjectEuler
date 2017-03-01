#!/usr/bin/perl

use strict;
use warnings;

open my $file, "<", "p022_names.txt";
my $f = <$file>;
close $file;

$f =~ tr/,"/ /d;
my @a = split(' ', $f);
@a = sort @a;
my $t = 0;

for my $i(0 .. $#a) {
  my @chars = split //, $a[$i];
  my $l = 0;
  foreach my $char(@chars){
    $l += ord($char) - 64;
  } 
  $t += $l * ($i + 1);
}
print "$t\n";
