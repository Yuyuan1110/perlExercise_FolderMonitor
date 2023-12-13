
# Feature: Weite event to the log file.
# 
# Author: yuyuan <yuyuan@acom.networks.com>
# Date: 2023/12/7
package LogCreater;
use strict;
use warnings;

sub new {
    my ( $class, $logPath ) = @_;
    my $self = { logPath => $logPath };
    bless $self, $class;
    return $self;
}

sub writeLog {
    my ( $self, $eventLog ) = @_;
    my $logName = $self->{logPath} . $self->getName( $self->getTime() );
    if ( !-e $logName ) {
        open( my $logFile, '>', $logName )
          or die "Could not open file: $!";
        print $logFile "[" . $self->getTime() . "] " . $eventLog;
        close($logFile);
    }else{
        open( my $logFile, '>>', $logName )
          or die "Could not open file: $!";
        print $logFile "[" . $self->getTime() . "] " . $eventLog;
        close($logFile);
    }
}

sub getTime {
    my ($self) = @_;
    my ( $sec, $min, $hour, $day, $month, $year ) = localtime(time);
    $year  += 1900;
    $month += 1;
    return sprintf( "%04d-%02d-%02d %02d:%02d:%02d",
        $year, $month, $day, $hour, $min, $sec );
}

sub getName {
    my ( $self, $time ) = @_;
    $time =~ /^(.*?)\s/;   
    return "watch_folder-$1.log";
}
1;
