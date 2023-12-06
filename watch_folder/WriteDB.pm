# feature: Create DB connection and write csv value to the DB.
#
# Author: yuyuan <yuyuan@acom.networks.com>
# Date: 2023/12/7
package WriteDB;
use strict;
use warnings;
use DBI;

sub new {
    my ( $class, $dbConfig ) = @_;
    my $self = { dbConfig => $dbConfig };
    bless $self, $class;
    return $self;
}

sub connection {
    my ($self) = @_;
    my $dsn =
        "DBI:mysql:database="
      . $self->{dbConfig}->{database}
      . ";host="
      . $self->{dbConfig}->{host};
    my $user     = $self->{dbConfig}->{user};
    my $password = $self->{dbConfig}->{password};
    my $dbh =
      DBI->connect( $dsn, $user, $password,
        { RaiseError => 1, PrintError => 0 } );
    unless ($dbh) {
        die "Error connecting to database: " . DBI->errstr;
    }
    return $dbh;
}

sub write {
    my ( $self, $dbh, $eventFullname ) = @_;
    my $insert_sql = "INSERT INTO csv (date, p1, p2) VALUES (?, ?, ?)";
    my $sth        = $dbh->prepare($insert_sql);
    my @content    = $self->getCSVContent($eventFullname);
    $sth->execute( $content[0], $content[1], $content[2] )
      or die "Couldn't execute statement: " . $sth->errstr;

    # Clean up
    $sth->finish;

    print "Data inserted successfully\n";
}

sub getCSVContent {
    my ( $self, $eventFullname ) = @_;
    open( my $readCSV, "<", $eventFullname )
      or die "Could not open $eventFullname: $!";

    my $last_line;
    while ( my $line = <$readCSV> ) {
        chomp $line;
        $last_line = $line;
    }
    close($readCSV);

    if ( defined $last_line ) {
        my @fields = split ',', $last_line;
        return @fields;
    }
    else {
        print "CSV file is empty.\n";
    }
}
1;
