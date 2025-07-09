#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use Logger;
use DBI;

print "Content-type: text/html\n\n";

sub load_image_from_DB {
    my $dsn = "DBI:mysql:dbname=test;host=localhost;port=3306";
    my $user = "tester";
    my $password = "123456";

    my $dbh = DBI->connect(
        $dsn, $user, $password,
        {
            RaiseError => 0,
            AutoCommit => 1,
            PrintError => 1,
        }
    ) or die Logger::Log("DB connect error: $DBI::errstr");

    Logger::Log("Connected to DB");

    my $sth = $dbh->prepare("SELECT name, data FROM images WHERE id = ?;") or die Logger::Log("Prepare failed");
    $sth->execute(1) or die Logger::Log("Execute failed");

    my ($name, $data) = $sth->fetchrow_array();

    open(my $file_h, '>:raw', "restored_$name") or die Logger::Log("Can`t save image into file");
    print $file_h $data;
    close($file_h);

    Logger::Log("Image saved to file");

    $sth->finish;
    $dbh->disconnect;
}

load_image_from_DB();

1;

