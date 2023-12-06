# main.pl

use lib './gen_csv';
use strict;
use warnings;
use CSVCreater;

# Create CsvGenerator object
my $csvCreater = CSVCreater->new('/home/csv_folder');

# Gat parameter from command line.(e.g. perl gen_csv.pl [p1] [p2])
if (@ARGV > 2) {
    die "Error: Too many arguments. Usage: $0 arg1 arg2\n";
}
my $arg1 = $ARGV[0] // "default_arg1";
my $arg2 = $ARGV[1] // "default_arg2";
my $csvFile = $csvCreater->createCSV($arg1, $arg2);

print "CSV file generated in folder: $csvFile\n";
