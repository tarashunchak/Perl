#!D:/Strawberry/perl/bin/perl.exe

use strict;

print "Content-type: text/html\n\n";
print "Hello, world!";

sub main{
  my $file;
  open($file, '>', 'file.txt') or die "Cannot open file";
  print $file "Якісь дані";
  close($file) or die "Cannot close file";
}

main();
