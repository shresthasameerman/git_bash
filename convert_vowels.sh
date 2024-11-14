#!/bin/bash

# Check if the correct number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi

# Assign arguments to variables
input_file="$1"
output_file="$2"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file does not exist."
    exit 1
fi

# Process each line in the input file, convert vowels to uppercase, and save to the output file
while IFS= read -r line; do
    modified_line=$(echo "$line" | sed 's/[aeiou]/\U&/g;s/[AEIOU]/\U&/g')
    echo "$modified_line" >> "$output_file"
done < "$input_file"

echo "All lines with vowels converted to uppercase have been saved to $output_file."

# Section 8: Get Network and Disk Information
echo -e "\n--- Network Information ---" >> "$output_file"

# Display network interface names, MAC addresses, and IP addresses
ip -o link show | awk '{print "Interface: "$2"\nMAC Address: "$17}' >> "$output_file"
ip -o -4 addr show | awk '{print "Interface: "$2"\nIP Address: "$4}' >> "$output_file"

echo -e "\n--- Disk Information ---" >> "$output_file"

# Display disk usage and mount points
df -h --output=source,fstype,size,used,avail,pcent,target | column -t >> "$output_file"

# Optional: For detailed disk layout, list all block devices
echo -e "\nDetailed Disk Layout:" >> "$output_file"
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT >> "$output_file"

echo "Network and disk information has been appended to $output_file."
