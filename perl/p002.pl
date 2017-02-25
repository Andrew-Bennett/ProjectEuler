#!/usr/bin/perl

$a = 1;
$b = 1;
$c = 0;
$d = 0;

while($a < 4000000) {
  $c = $a;
  $a += $b;
  $b = $c;

  $d += $a if $a%2==0;

}

print $d, "\n";
