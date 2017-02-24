#!/usr/bin/perl

#Strict and warings are recommended.
use strict;
use warnings;

$b = 0;

for( $a = 0; $a < 1000; $a = $a + 1) {
  if( $a % 3 == 0 ) {
    $b += $a;
    next;
  }  
  if( $a % 5 == 0) {
    $b += $a;
    next;
  } 
}

print($b, "\n");
