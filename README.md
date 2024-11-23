# How to Use the Vowel Uppercase Converter Script

This section outlines the steps to use the Bash script that converts vowels in a text file to uppercase and appends network and disk information.

## Prerequisites

- Ensure you have a Unix-like operating system (Linux, macOS, etc.) with Bash installed.
- The following commands must be available: `ip`, `awk`, `df`, and `lsblk`.

## Steps to Use the Script

1. **Download or Create the Script**:
   - Create a new file named `process_script.sh` and copy the script into it.

   ```bash
   nano process_script.sh
   chmod +x process_script.sh
   echo -e "This is a test file.\nIt contains some vowels." > input.txt
   ./process_script.sh input.txt output.txt
   cat output.txt
   
   Example Command

bash

./process_script.sh input.txt output.txt

This command processes input.txt and saves the results in output.txt.
