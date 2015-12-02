#!/usr/bin/env perl

=head1 ringlis_rebuild
  description: Browses ../ringtones/ folder searching for
  for *.raw Cisco ringtone files and creates XML files
  to provide list to Cisco phones.

  Modulis.ca Inc. 2015 :: Zonkey project
=cut

use feature ':5.10';
use strict;
use warnings;
use Getopt::Long;
use File::Glob qw(:globally :nocase);
use File::Spec;
use File::Basename;
use File::Copy;
use Data::Dumper;

my $prog   = $0;
my $help   = 0;
my $rawdir = 'common/ringtones';
my $dstdir = '.';
my $docdir = $rawdir;
my $usage  = <<EOQ;
  Usage: $prog [OPTIONS]
  Options:
    --help, -h      Print usage.
    --rawdir, -r    Raw directory. Default: "$rawdir".
    --dstdir, -d    Destination where to create XML list files. Default: "$dstdir".
    --docdir, -c    Directory to use in XML document. If not provided, then raw directory will be used.
EOQ

GetOptions (
  'help|h'      => sub { print $usage; exit(0); },
  'rawdir|r=s'  => \$rawdir,
  'dstdir|d=s'  => \$dstdir,
  'docdir|c=s'  => \$docdir
) or die $usage;

my @files = qw/
DISTINCTIVERINGLIST.XML
distinctiveringlist.xml
RINGLIST.XML
RingList.xml
Ringlist.xml
/;
my ($vol, $cwd, undef) = File::Spec->splitpath($prog);
my $dstfile = File::Spec->catpath($vol, $dstdir, "ringlist.xml");

my @rawfiles = <$rawdir/*.raw>;
die "No files found in raw directory '$rawdir'." if(scalar @rawfiles == 0);

open FILE, ">$dstfile" or die "Can not write to file $dstfile.";

print FILE "<CiscoIPPhoneRingList>\n";
foreach my $rfile (@rawfiles){
  my($name, , ) = fileparse($rfile, ".raw");
  print FILE "<Ring>\n";
  print FILE "  <DisplayName>$name</DisplayName>\n";
  print FILE "  <FileName>".File::Spec->catpath($vol, $docdir, basename($rfile))."</FileName>\n";
  print FILE "</Ring>\n";
}
print FILE "</CiscoIPPhoneRingList>\n";

close FILE;

foreach my $dst (@files){
  copy($dstfile, File::Spec->catpath($vol, $dstdir, $dst));
}

__END__
