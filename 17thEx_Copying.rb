from_file, to_file = ARGV #rubytext.txt to newtext.txt

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read
print indata

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

target_file = open(to_file, 'w')
target_file.write(indata)

puts "Alright, all done."

target_file.close

txt = open(target_file)
print txt.read
