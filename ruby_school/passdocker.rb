input = File.open "passwords.txt", "r"
n = 1.to_i
while (line = input.gets)
line.strip!
line.upcase!
    if line.length == 6
    puts "#{n}" + ' - ' + "#{line}"
    n += 1
    end
end
