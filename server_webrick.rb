require 'webrick'

# root = File.expand_path '~/public_html'
root = File.expand_path 'index.html'

server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
server = WEBrick::HTTPServer.new :Port => 80, :DocumentRoot => root

trap 'INT' do server.shutdown end

    server.start