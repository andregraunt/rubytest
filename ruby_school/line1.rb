# input = File.open "passwords.txt", "r"

# n = 1.to_i
# while (line = input.gets)

# line.strip!
#     # if line.length == 6
    
#     puts "#{n}" + ' - ' + "#{line.bytes}"
#     n += 1
    
# end

 
data = []
 
File.open('passwords.txt', 'r') do |file|
  file.each_line { |x| data.push(x) }
end
 puts data.
changed_data = data.map do |x|
  x.upcase
  
end
 
File.open('password.txt', 'w') do |file|
  changed_data.each { |x| file.puts(x) }
  puts data
end