import csv

def print_header(csv_file):
    """Print the header of the CSV file"""
    with open(csv_file, 'r', newline='') as f:
        reader = csv.reader(f)
        header = next(reader, None)
        if header:
            print(','.join(header))

def print_contents(csv_file):
    """Print the contents of the CSV file (excluding header)"""
    with open(csv_file, 'r', newline='') as f:
        reader = csv.reader(f)
        next(reader, None)  # Skip header
        for row in reader:
            print(','.join(row))

# Example usage
if __name__ == "__main__":
    csv_file = "iris (1).csv"
    print("Header:")
    print_header(csv_file)
    print("\nContents:")
    print_contents(csv_file)