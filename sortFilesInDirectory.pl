#!/usr/bin/perl

use strict;
use warnings;
# Creating an array to hold elements

my $file; #Scalar variable
my @files; # List to hold multiple elemtns

my $directory="/";

opendir(DIR,$directory) or die "could not open directory handle \$!";
while($file=readdir(DIR))
{
 print "$file\n";
 push (@files,$file);
 }

foreach $file (@files)
{
 print "$file\n"."++";
}


@files=sort{$a cmp $b} @files;
foreach $file (@files)
{
  print "$file\n";
}
