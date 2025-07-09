package Logger;

use strict;
use warnings;

#**********************************************************
sub Log{ #Logging function
    my ($log_message) = @_;
    my $timestamp = localtime();
    open(my $file_h, '>>', 'script.log') or die "Can`t open log: $!";
    print $file_h "[$timestamp] $log_message\n";
    close($file_h);

    return $log_message;
}

1;
