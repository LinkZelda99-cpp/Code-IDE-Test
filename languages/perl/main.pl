use strict;
use warnings;
my @values = (3, 1, 4, 1, 5, 9);
my $total = 0;
$total += $_ for @values;
print "Hello from Perl\nsum: $total\n";
