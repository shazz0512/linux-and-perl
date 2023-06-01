use strict;
use warnings;

open (my $file,"+>output.txt") or die "cant open data";
print  $file "this is first line";
print  $file "this is second line";
print  $file "this is third line";

print "OUT: file created";
#!/usr/bin/perl


# Define the word to search for
my $search_word = "this";

# Initialize the counter
my $counter = 0;

# Read the file line by line
while (my $line = <$file>) {
    # Count the occurrences of the search word in each line
    my $occurrences = () = $line =~ /\b$search_word\b/gi;

    # Increment the counter by the number of occurrences
    $counter += $occurrences;
}

# Close the file
close($file);

# Print the counter value
print "The word '$search_word' appeared $counter times in the file.\n";

