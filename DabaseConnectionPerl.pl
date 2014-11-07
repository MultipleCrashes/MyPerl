#! /usr/bin/perl

use DBI;
use strict;

my $driver="mysql";
my $database="harish";
my $host="PUT YOUR DATABASE MACHINE IP ";
my $port=3300;
my $dsn="DBI:$driver:database=$database:host=$host:port=$port";
my $userid="su4";
my $password="PUT YOUR DATABASE PASSWORD";

my $dbh=DBI->connect($dsn,$userid,$password) or die $DBI::errstr;

my $sth=$dbh->prepare("SELECT * FROM info");
$sth->execute() or die $DBI::errstr;

print "Number of rows found "+$sth->rows;
while(my @row =$sth->fetchrow_array())
{
  my ($first)=@row;
  print "First name is $first ";
}
# closing the statment handle
$sth->finish();
$dbh->disconnect();

print "Done , exiting";
