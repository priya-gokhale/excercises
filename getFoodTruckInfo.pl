use strict;
   
my $file = C:\project\foodtruck\Mobile_Food_Facility_Permit.csv or $ARGV[0] or die;
open(my $data, '<', $file) or die;
my @all_cnn;

while (my $line = <$data>) 
{
    # remove newline character from the end of the string
    chomp $line;
   
    # Split the line and store it
    # in the truck_info array
    my @truck_info = split ", ", $line;
    
    #get the length of the truck_info array
    my $truck_info_size = @truck_info;
   
    for (my $i = 0; $i <= $truck_info_size; $i++)
    {
        push(@all_cnn, $truck_info[$i]) if $i eq 3;
    }
}

#print all cnn
foreach ( @all_cnn ) {
	print "$_ \n";
}
