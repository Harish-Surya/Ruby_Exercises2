# Give the input of the file.
input_file = ARGV.first   # here file name is newtext.txt

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0)
end

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file) # newtext.txt is assigned to current_file

puts "First let's print the whole file:\n"

print_all(current_file) # printing all the values in current_file

puts "Now let's rewind, kind of like a tape."

rewind(current_file) # going back to the start of the line as "0th line"

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
