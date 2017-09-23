#/usr/bin/env perl

use warnings;
use strict;

{
    my $file = $ARGV[0] or die "No filename given\n";
    local $/ = undef;

    open (my $fh, "<", $file) or die "$!\n";
    my $lines = <$fh>;
    close $fh;

    $lines =~ s#(\d\d)/(\d\d)/(\d\d\d\d)#$2/$1/$3#g;

    open ($fh, ">", $file);
    print $fh $lines;
    close $fh;
}
