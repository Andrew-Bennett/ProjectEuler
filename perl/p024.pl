use ntheory qw/forperm/;
my @tasks = (qw/0 1 2 3 4 5 6 7 8 9/);
my $i = 1;
my $a = 0;
forperm {
  if($i == 1000000) {
    $a = @tasks[@_];
    print "@tasks[@_]\n";
    last;
  }
  print "@tasks[@_]\n"; $i++;
} scalar(@tasks);
print "$i $a\n";
