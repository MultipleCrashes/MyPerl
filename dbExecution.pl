[root@su4-datastore harish]# cat perlDB.pl
#! /usr/bin/perl

use DBI;

my $driver="mysql";
my $database="certrep";
my $dsn="DBI:$driver:$database:localhost:3300";
print $dsn

my $userid="su4";
my $password="56a6aeda1ad6cc992dbe8616c7a2b897";

print "Creating handle to database";

my $dbh = DBI->connect( $dsn, $userid, $password ) or die $DBI::errstr;

my $sth=$dbh->prepare("SELECT * FROM info");
$sth->execute() or die $DBI::errstr;

print "Number of rows found "+$sth->rows;
while(my @row =$sth->fetchrow_array())
{
  my ($first)=@row;
  print "First name is $first ";

}
sth->finish();
