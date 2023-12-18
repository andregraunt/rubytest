require 'net/http'
require 'uri'

uri = URI.parse 'http://localhost:4567/'
# uri = URI.parse 'http://gonago.ml/'
response = Net::HTTP.get uri
puts response