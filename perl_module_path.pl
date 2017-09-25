# <3 : http://www.symkat.com/find-a-perl-modules-path
use warnings;
use strict;

sub find_module_path {
    my ($module) = @_;
    die "no module given\n" unless $module;

    $module =~ s#::#/#g;
    $module .= '.pm';

    my $path = eval {
        require $module;
        return $INC{$module};
    };

    if ($@) {
        return undef;
    }

    return $path;
}

my $location = find_module_path($ARGV[0]);

print $ARGV[0] . ": " . ((defined $location ? $location : 'not found') . "\n");
