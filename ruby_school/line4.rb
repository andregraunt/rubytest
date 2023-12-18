input = []
input = File.open "passwords.txt", "r"
# n = 1.to_i
# while (line = input.gets)

# line.upcase!
    # if line.length == 6
    # puts "#{n}" + ' - ' + "#{line}"
    # puts input
    # n += 1
    


arr = Array[*(1..10001)]

# input.map{|x| puts x}
# puts arr

result = arr.zip input
puts result