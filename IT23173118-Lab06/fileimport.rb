require 'csv'

def print_header(csv_file)
  # Print the header of the CSV file
  header = CSV.read(csv_file, headers: false).first
  puts header.join(',')
end

def print_contents(csv_file)
  # Print the contents of the CSV file (excluding header)
  CSV.foreach(csv_file, headers: true) do |row|
    puts row.to_a.join(',')
  end
end


if __FILE__ == $PROGRAM_NAME
  csv_file = "iris (1).csv"
  puts "Header:"
  print_header(csv_file)
  puts "\nContents:"
  print_contents(csv_file)
end