# <- maybe put a shebang here
## Factorial calculation.
use strict;
use warnings;
use bigint;

# ..+....|....+....|....+....|....+....|....+....|
#  MARK:  factorial
sub factorial {
  my $f_n = shift;
  my $fac = 1;
  if ($f_n > 1) {
    foreach my $f_ (1 .. $f_n) {
      $fac *= $f_;
    }
  }
  return $fac;
}

# ..+....|....+....|....+....|....+....|....+....|
#  MARK:  main starts here ...
print "PerlFactorial\n";
print "Perl Version: $]. Version string: $^V\n";

my $fac = 54;
my $factorial_v;

foreach my $f_n (1 .. $fac) {
  $factorial_v = factorial($f_n);
  printf("%4d! %80s\n", $f_n, $factorial_v);
}
