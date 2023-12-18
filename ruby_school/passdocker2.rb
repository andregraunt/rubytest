print "Enter password: "
my_password = gets.strip


input = File.open "passwords.txt", "r"

while (line = input.gets)
line.strip!
    # if line == my_password
    if my_password.include? line
    puts "Your password is weak!"
    exit
    end
end
puts "Your password is not weak."