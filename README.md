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


# **File Merger Script**

This repository contains a Bash script that merges specific portions of two files into a single output file. The script extracts the first 15 lines from the first file and the last 30 lines from the second file, appending them into a new file.

---

## **Features**
- Extracts the first 15 lines from the specified first file.
- Extracts the last 30 lines from the specified second file.
- Saves the merged content into a single output file.
- Includes error handling for missing files and incorrect usage.

---

## **Requirements**
- Linux or macOS system with Bash shell.
- Utilities required:
  - `head` (to extract the first 15 lines).
  - `tail` (to extract the last 30 lines).

---

## **Usage Guide**

### **1. Clone the Repository**
Clone the repository to your local machine:
```bash
git clone https://github.com/<your-username>/file-merger-script.git
cd file-merger-script
```

---

### **2. Make the Script Executable**
Set execution permissions for the script:
```bash
chmod +x file_merger.sh
```

---

### **3. Prepare Input Files**
Ensure you have two input files ready (e.g., `file1.txt` and `file2.txt`). Examples:

```bash
# Create the first input file with sample text
echo -e "Line 1\nLine 2\nLine 3\n... up to 20 lines" > file1.txt

# Create the second input file with sample text
echo -e "Line 1\nLine 2\nLine 3\n... up to 40 lines" > file2.txt
```

---

### **4. Run the Script**
Run the script by providing the two input files and the desired output file as arguments:
```bash
./file_merger.sh file1.txt file2.txt output.txt
```

---

### **5. Check the Output**
- The `output.txt` file will contain:
  1. The first 15 lines from `file1.txt`.
  2. The last 30 lines from `file2.txt`.

To view the output:
```bash
cat output.txt
```

---

## **Script Details**

### **Error Handling**
- The script checks if the correct number of arguments are provided:
  ```bash
  Usage: ./file_merger.sh <file1> <file2> <output_file>
  ```
- Ensures both input files exist before proceeding.

---

### **Process Explanation**
1. **Extract First 15 Lines**:
   ```bash
   head -n 15 "$file1" > "$output_file"
   ```
   Writes the first 15 lines from the first file into the output file.

2. **Extract Last 30 Lines**:
   ```bash
   tail -n 30 "$file2" >> "$output_file"
   ```
   Appends the last 30 lines from the second file into the output file.

3. Displays a success message:
   ```bash
   echo "The first 15 lines from $file1 and the last 30 lines from $file2 have been saved to $output_file."
   ```

---

## **Example Workflow**
```bash
# Step 1: Create input files
echo -e "Line 1\nLine 2\nLine 3\n... up to 20 lines" > file1.txt
echo -e "Line 1\nLine 2\nLine 3\n... up to 40 lines" > file2.txt

# Step 2: Run the script
./file_merger.sh file1.txt file2.txt output.txt

# Step 3: View the output
cat output.txt
```

---

## **Contributing**
Contributions, issues, and feature requests are welcome! Feel free to create a pull request or open an issue on GitHub.

---

## **License**
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
