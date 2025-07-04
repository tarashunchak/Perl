#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use TABLE_GEN;
use DBI;


print "Content-Type: text/html; charset=utf-8\n\n";

my $dsn = "DBI:mysql:dbname=test;host=localhost;port=3306";
my $user = "tester";
my $password = "123456";

my $dbh = DBI->connect(
    $dsn, $user, $password,
    {
        RaiseError => 1,
        AutoCommit => 1,
        PrintError => 1,
    }
);

my $sth = $dbh->prepare("SELECT id, CONCAT(first_name, ' ', last_name) AS full_name, phone, IFNULL(email, 'No email') AS email FROM customers;");
$sth->execute();

#Records from table 'customers'
my @records;

while (my $row = $sth->fetchrow_hashref()){
    push @records, $row;
}

#customers table generation
my $html_table = TABLE_GEN::gen_table(\@records);

#printing customers table
print $html_table;

$sth->finish;
$dbh->disconnect;

1;
