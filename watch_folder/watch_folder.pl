#!/usr/bin/perl

# feature: Monitor Specified floder and record the event logs, weitting value parameter to DB .
#
# Author: yuyuan <yuyuan@acom.networks.com>
# Date: 2023/12/6

use lib '/home/u/devlopment/perl/week4/watch_folder';
use LogCreater;
use ReadINI;
use WriteDB;
use strict;
use warnings;
use Linux::Inotify2;

my $readINI    = ReadINI->new('./watch_folder/watch_folder.ini');
my $logPath    = $readINI->getLogPath();
my $logCreater = LogCreater->new( $logPath->{logs_path} );

my $inotify = Linux::Inotify2->new()
  or die "Unable to create new inotify object: $!";
$inotify->watch( $logPath->{watch_folder}, IN_MODIFY | IN_CREATE | IN_DELETE )
  or die "Unable to watch directory: $!";

my $dbConfig     = $readINI->getDBConfig();
my $dbh          = WriteDB->new($dbConfig);
my $dbConnection = $dbh->connection();

while (1) {
    my @events        = $inotify->read;
    my $create        = 0;
    my $eventFullname = $logPath->{watch_folder};
    if (@events) {
        foreach my $event (@events) {
            if ( $event->mask & IN_CREATE ) {
                $create = 1;
                print "File created: ", $event->fullname, "\n";
                $logCreater->writeLog(
                    "File created: " . $event->fullname . "\n" );
            }
            elsif ( $event->mask & IN_DELETE ) {
                print "File deleted: ", $event->fullname, "\n";
                $logCreater->writeLog(
                    "File deleted: " . $event->fullname . "\n" );
            }
            elsif ( $event->mask & IN_MODIFY ) {
                print "File modified: ", $event->fullname, "\n";
                $logCreater->writeLog(
                    "File modified: " . $event->fullname . "\n" );
                if ($create) {
                    my $getName = $event->fullname;
                    $getName =~ m|/([^/]+)$|;
                    $eventFullname .= $1;
                    $dbh->write( $dbConnection, $eventFullname );
                    $create = 0;
                }
            }
        }
    }
}
