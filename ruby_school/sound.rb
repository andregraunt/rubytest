# require 'jimmy_jukebox'
# require 'posix'
require'io/console'

# jukebox = JimmyJukebox.new
# jukebox.add('key.mp3')
# jukebox.play

file_path = File.expand_path('oneforyamada.mp3')

IO.console.puts `afplay #{file_path}`