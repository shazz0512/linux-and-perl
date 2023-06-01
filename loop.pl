use strict;
use warnings;

=begin
print "Are you happy: ";
my $a=<>;
chomp($a);
if ($a eq "y"){
	print "great";
} 
elsif($a eq "n"){
	print "oops its sad..";

}
else{
    exit 127;
}

#-------------------------

my @no=(1,2,3);
foreach (@no){
   print "$_\n";
}


