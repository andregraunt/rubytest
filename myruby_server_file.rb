require 'webrick'

server = WEBrick::HTTPServer.new Port: 80

server.mount_proc '/' do |_req, res|
  res.body = 'Welcome to my website!'
end

trap 'INT' do server.shutdown end

server.start
