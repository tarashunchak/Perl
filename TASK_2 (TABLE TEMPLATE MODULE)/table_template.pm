package table_template;

use strict;
use warnings;

sub gen_table{
    print "gen_table\n";
    my ($rows_ref) = @_;

    my $html = "<table border='1' cellpadding='5' style='border-collapse: collapse;'>\n";
    $html .= "<tr><th>ID</th><th>Full Name</th><th>Phone</th><th>Email</th></tr>\n";

    foreach my $row (@$rows_ref){
        $html .= "<tr>";
        $html .= "<td>".$row->{id}."</td>";
        $html .= "<td>".$row->{full_name}."</td>";
        $html .= "<td>".$row->{phone}."</td>";
        $html .= "<td>".$row->{email}."</td>";
        $html .= "</tr>\n";
    }

    $html .= "</table>";

    return $html;
}


1;