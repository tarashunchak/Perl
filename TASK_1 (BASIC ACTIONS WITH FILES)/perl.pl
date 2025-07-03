#!D:/Strawberry/perl/bin/perl.exe

use strict;
use warnings;
use CGI;

print "Content-type: text/html\n\n";
#print "Hello, world!";

my $data = CGI->new;
my $file;
open($file, '>>', 'file.txt') or die "Cannot open file";
print $file "\n-----------------------------------------\n";
print $file "UserID: ".$data->param('user_id')."\n";
print $file "New name: ".$data->param('name')."\n";
print $file "New email: ".$data->param('email')."\n";
print $file "New city: ".$data->param('city')."\n";
print $file "\n-----------------------------------------\n";

close($file) or die "Cannot close file";