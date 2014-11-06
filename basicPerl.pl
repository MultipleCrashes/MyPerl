#!usr/bin/perl 



print "Hello World.\n";
print "Hello world ";

sub function_to_execute{
print "Harish Kumar Upadhyay";
$n=scalar(@_);
$sum=0;
foreach $item (@_){
print $item;
print "\n";
$sum+=$item;

  }
  
  $average=$sum/$n;
  print "Average for the given numbers :$average";
}




sub list_as_argument{
print "calling list as argument \n";
my @list=@_;
print "Given list is @list\n";

print "File Name currently in use ".__FILE__."\n";
print "Line Number".__LINE__."\n";
print "Package ".__PACKAGE__."\n";
}



sub fileHandling
{
print "Called function to handle file ";
#open(DATA,"<sample") or die "Could not open test file sample, $!";
#while(<DATA>)
#{
#print "$_";
#}
}




#Function call  to function to execute
function_to_execute(10,20,30);

#Calling function to handle file data 
fileHandling()




#calling list as argument
$a=10;
@b= (1,2,3,4);
#ist_as_argument($a,@b);


