input = File.open "passwords.txt", "r"

while (line = input.gets)
line.strip!
    if line.length == 6
    puts line
    end
end