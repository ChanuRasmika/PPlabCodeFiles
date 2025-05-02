use strict;
use warnings;
use File::Find;

# Find all .conf files
find(\&wanted, '/');

sub wanted {
    print "$File::Find::name\n" if /\.conf$/ && -f;
}