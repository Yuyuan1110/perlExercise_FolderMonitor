use lib './watch_folder';
use LogCreater;
use ReadINI;
use WriteDB;
use strict;
use warnings;

my $readINI = ReadINI->new('./watch_folder/watch_folder.ini');
my $dbConfig = $readINI->getDBConfig();
my $dbh = WriteDB->new($dbConfig);
my $dbConnection = $dbh->connection();

$dbh->getCSVContent("/home/u/test/csv_folder/20231207042727.csv");