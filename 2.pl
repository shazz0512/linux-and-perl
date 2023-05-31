use strict;
use warnings;

#print "Enter the list of array: ";
#my @a=<>;

#print "out1:$a[1]\n";
#print "out2:$a[2]\n";
#print "out3:$a[3]\n";
#print "array is:@a\n";

#--------------------------------------

=begin
my @array=('shradha', 'Nikhil', 'Bubu', 'Kuku', 'love');
my @new=@array[0..2];
print "updated :@new\n";
my @new1=reverse(@array);
print "reverse: @new1\n";
my $str="shradha";
my $str1=reverse($str);
print "reverse string : $str1\n";
=cut

#-----------------------------------------

	 
   
my $str="hi this is shradha is girl\n";
print "lenght of string: ";
# length function
print (length($str),"\n");
my $substr= "is";
# index function
my $str1=index($str,$substr);
print "position of substring: $str1\n";
# rindex function
my $str1=rindex($str,$substr);
print "position for substring occurence: $str1\n";
# uc lc
print (uc($str)," Upper case\n");
print (lc($str), " Lower case\n");
# repetition
my $st1="she studies maths";
my $con = $st1 x 5;
print "repeated strings: $con\n";
# concatenate
my $combine= $str;
 $combine .= $st1;
print "concatenated: $combine\n"



#----------------------------------------






