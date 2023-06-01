use strict;
use warnings;

my $str="my name is Ankita";
if ($str=~ m/sharu/){
	print "match found";

}
elsif($str=~ s/Ankita/Sharu/){
	print "out: $str\n";

}


($str=~ s/(\w+)/uc$1/eg) ---->> all uc

