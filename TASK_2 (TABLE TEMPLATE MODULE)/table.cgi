#!"C:\xampp\perl\bin\perl.exe"

use strict;
use warnings;
use lib 'C:/xampp/cgi-bin/';
use table_template;
use DBI;

print "Content-Type: text/html; charset=utf-8\n\n";

my $dsn = "SOME_DSN";
my $user = "SOME_USER";
my $password = "SOME_PASSWORD";

my $dbh = DBI->connect(
    $dsn, $user, $password,
    {
        RaiseError => 1,
        AutoCommit => 1,
        PrintError => 1,
    }
) or die "<p>Cannot connect to DB: $DBI::errstr</p>";

print "<p>Successfully connect to DB!</p>";


my $sth = $dbh->prepare("SELECT id, (first_name || ' ' || last_name) AS full_name, phone, COALESCE(email, 'No email') AS email FROM customers;");
$sth->execute();

my @records;

while (my $row = $sth->fetchrow_hashref()){
    push @records, $row;
}

my $html_table = table_template::gen_table(\@records);
print $html_table;

$sth->finish;
$dbh->disconnect;
