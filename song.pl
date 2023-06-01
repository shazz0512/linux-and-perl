use strict;
use warnings;

open(DATA, "<songs.txt") or die "cant open data";
#chomp(my $lines = <DATA>);
#print "Enter the artist name: ";
#my $name=<>;
while(<DATA>)
{
   my($song_id,$song_name,$artist,$duration,$cost)= split /\s*,\s*/ ,$_;
   print "Enter the artist name: ";
   my $name=<>;
   if ($name eq $artist){
  	print "exists";
   }
   else{
   print "$artist  $name" ;  
}
}
close;

#print "Out: $lines\n";
=begin
print "Enter the artist name: ";
my $name=<>;
chomp(my $name);
=cut
