#
# Feature: Read the config file and return, 
#          Create the log folder.
# 
# Author: yuyuan <yuyuan@acom.networks.com>
# Date: 2023/12/7
package ReadINI;
use strict;
use warnings;
use Config::Tiny;
use File::Path qw(make_path);

# Remove separators
# sub trim {
#     my ($string) = @_;
#     $string =~ s/^\s+//;
#     $string =~ s/\s+$//;
#     return $string;
# }

sub new {
    my ( $class, $iniPath ) = @_;
    my $self = { iniPath => $iniPath };
    bless $self, $class;
    return $self;
}

sub checkINI {
    my ($self) = @_;
    my $watchConfig = Config::Tiny->read( $self->{iniPath} );

    if ($watchConfig) {
        return $watchConfig;
    }
    else {
        die "Error reading config file: ", Config::Tiny->errstr
          unless $watchConfig;
    }
}

sub getLogPath {
    my ($self) = @_;
    my $watchConfig = $self->checkINI()->{system};
    if ( $watchConfig->{'watch_folder'} ) {
        if ( !-d $watchConfig->{'watch_folder'} ) {
            make_path( $watchConfig->{'watch_folder'} );
            print "Create watch_folder: $watchConfig->{'watch_folder'}\n";
        }
    }
    else {
        die 'Could not find the "watch_folder" in '
          . $self->{iniPath}
          . ', please check the settings are correctly';
    }

    if ( $watchConfig->{'logs_path'} ) {
        if ( !-d $watchConfig->{'logs_path'} ) {
            make_path( $watchConfig->{'logs_path'} );
            print "Create watch_folder: $watchConfig->{'logs_path'}\n";
        }
    }
    else {
        die 'Could not find the "logs_path" in '
          . $self->{iniPath}
          . ', please check the settings are correctly';
    }
    return $watchConfig;
}

sub getDBConfig {

    my ($self) = @_;
    my $getConfig = $self->checkINI()->{DB};
    if (   $getConfig->{'host'}
        && $getConfig->{'user'}
        && $getConfig->{'password'}
        && $getConfig->{'database'} )
    {
        return $getConfig;
    }
    else {
        die 'please check [DB] settings are correctly.';
    }

}

1;
