data = []
 
File.open('passwords.txt', 'r') do |file|
    file.each_line { |x| data.push(x) }
 
end

# puts data.sort

# puts data
puts data.map{|s| s.upcase}
puts data[10000]
puts data