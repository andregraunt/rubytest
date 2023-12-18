require 'net/http'
require 'uri'
def is_wrong_password? password
    uri = URI.parse 'http://localhost:4567/login'
    # uri = URI.parse 'http://gonago.ml/'
    response = Net::HTTP.post_form(uri, 'username' => 'admin', 'password' => password).body
    return response.include? "Wrong"
end

puts is_wrong_password? "123123123"




