#!/usr/bin/perl


print "Hello world";

open(DATA,"+<sample.txt") or die "could not open file for reading,$!";
while(<DATA>){
 chomp;
 print "$_\n";
}

open(FILEHAND,"+<sample.txt") or die "Can't open data";
@lines=<FILEHAND>;
foreach $line (@lines)
{
 print "$line";
 print "\n"."---";
}

open(FILEHANDLE,">>sample.txt") or die "Could not opem file for appending,$!";
print FILEHANDLE "Another Line \n";
print FILEHANDLE "NEW LINE \n";



close(DATA) or die "Couldn't not close the file DATA properly";
close(FILEHAND) or die "Could not close the file handle FILEHAND properly";
close(FILEHANDLE) or die "Could not close the file handle FILEHANDLE properly";

print "All file handles are closed successfully";
