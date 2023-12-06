package CSVCreater;
use strict;
use warnings;

sub new {
    my ( $class, $csvPath ) = @_;
    my $self = { csvPath => $csvPath, };
    bless $self, $class;
    return $self;
}

sub checkPath {
    my ( $self, $path, $name ) = @_;
    if ( !-d $path ) {
        mkdir $path or die "Could not create directory $path: $!";
        print "Directory $path created.\n";
        open( my $csvFile, '>', $path . '/' . $name )
          or die "Could not open file: $!";
        return $csvFile;
    }
    else {
        if ( !-e $path . '/' . $name ) {
            open( my $csvFile, '>', $path . '/' . $name )
              or die "Could not open file: $!";
            return $csvFile;
        }
    }
}

sub createCSV {
    my ( $self, $p1, $p2 ) = @_;
    my $time     = $self->getTime();
    my $filename = $self->getFilename($time);
    my $csvFile = $self->checkPath( $self->{csvPath}, $filename );
    print $csvFile "Writed Time,Param1,Param2\n";
    print $csvFile "$time,$p1,$p2\n";
    close($csvFile);
    return $self->{csvPath} . '/' . $filename;
}

sub getTime {
    my ($self) = @_;
    my ( $sec, $min, $hour, $day, $month, $year ) = localtime(time);
    $year  += 1900;
    $month += 1;
    return sprintf( "%04d-%02d-%02d %02d:%02d:%02d",
        $year, $month, $day, $hour, $min, $sec );
}

sub getFilename {
    my ( $self, $time ) = @_;
    $time =~ s/[-\s:]//g;    # Remove separators
    return "$time.csv";
}

1;
