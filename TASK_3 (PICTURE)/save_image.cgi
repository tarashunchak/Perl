#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use Logger;
use DBI;

print "Content-type: text/html\n\n";

sub save_image_to_DB {
    my $dsn = "DBI:mysql:dbname=test;host=localhost;port=3306";
    my $user = "testr";
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

    my $image_path = 'image.jpg';

    open(my $file_h, '<:raw', $image_path) or die Logger::Log("Can`t open image");
    Logger::Log("Open image file for load data to DB");

    my $image_data;
    {
        local $/;
        $image_data = <$file_h>;
    }

    my $sth = $dbh->prepare("INSERT INTO images (name, data) VALUES(?, ?);") or die Logger::Log("Prepare failed");
    $sth->execute($image_path, $image_data) or die Logger::Log("Execute failed");

    Logger::Log("Image saved to DB");

    $sth->finish;
    $dbh->disconnect;
}

save_image_to_DB();

1;
