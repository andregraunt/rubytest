def is_password_weak? password
    input = File.open "passwords.txt", "r"

    while (line = input.gets)
    line.strip!
        # if line == my_password
        if password.include? line
            return true
        end
            
    end
    return false
end

print "Enter password: "
my_password = gets.strip


if is_password_weak? my_password
    puts "Your password is weak!"
else
    puts "Your password is not weak."
    
end