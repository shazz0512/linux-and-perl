=begin
# Perl program to demonstrate the
# looping over a multidimensional hash

# creating a hash
my %hash = ('MyVehicle' => 'Car',
			'Model' => 1234,
			'Speed' => 60.7,
			
			# value type hash
			'Traffic' => {'Red' => 'Stop',			
						'Yellow' => 'Look and move',
						'Green' => 'Go'},
							
			# value type array
			'AllVehicles' => ['Car', 'Cycle',
							'Bus', 'Auto']);

# Loop over the key storing array
my @array = @{$hash{'AllVehicles'}};
print "AllVehicles include \n";

# for loop to loop over the array
foreach my $ele (@array)
{
	print "$ele\n";
}

# Loop over the key storing hash
print "\nTraffic includes\n";

# for loop to loop over the hash
foreach my $val(keys %{$hash{'Traffic'}})
{
	print "Key : $val, value : $hash{'Traffic'}{$val}\n";
}
=cut

#-------------------------------------

# Initializing Hash2 by taking
# individual pairs
 %stud2 =  ('Comp', 15, 'Inft', 18, 'Extc', 22);

print %stud2;
# Initializing Hash with Key-Value pairs

# Extracting values using keys
print "\nPrinting values of Hash2\n";
print "computer = $stud2{'Comp'}";
print "\ninft = $stud2{Inft}";
print "\nextc = $stud2{'Extc'}\n";





# Extracting values from hash
@value_array = values %stud2;

# Printing the extracted values
print "Values are :\n";
print "$value_array[0]\n";
print "$value_array[1]\n";
print "$value_array[2]\n";


# Extracting keys from hash
@Key_array = keys %stud2;
 
# Printing the extracted keys
print "Keys are :\n";
print "$Key_array[0]\n";
print "$Key_array[1]\n";
print "$Key_array[2]\n";








