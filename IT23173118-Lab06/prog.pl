use strict;
use warnings;

sub search_file {
    my ($iris, $stosa) = @_;
    
    open(my $fh, '<', $filename) or do {
        warn "Cannot open $filename: $!\n";
        return;
    };
    
    while (my $line = <$fh>) {
        print $line if $line =~ /\Q$search_term\E/i;
    }
    
    close($fh);
}
