# Import the 'thread' module
require 'thread'

# Function to be executed in a separate thread
def print_numbers(start, stop)
  (start..stop).each do |num|
    puts num
    sleep(1) # Pause for 1 second between each number
  end
end

# Create a new threa
thread = Thread.new { print_numbers(1, 10) }

# Main thread continues execution
puts "Main thread is still running..."

# Wait for the thread to finish execution
# thread.join

15.times do |x|   
    puts x
    sleep 1
    thread.join
    sleep 1
    Thread.list.each{|t| puts t.inspect}   
end
# Thread has finished
puts "Thre  ad has completed its execution."

# Continue with main thread
puts "Main thread is done."

Thread.list.each{|t| puts t.inspect}



# t = Thread.new {sleep(1) ; puts "done"; sleep 1; puts 66}

# puts 1
# puts 2
# Thread.list.each{|t| puts t.inspect}
# t.join
# puts 3
# t.join
# Thread.list.each{|t| puts t.inspect}



# ts = (1..5) .map do |i|
#     Thread.new { sleep(3) ; puts "done #{i}" }
# end
# puts 'starting...'
# ts.each(&:join)
# puts 'done with threads'
    
# a = (1..7) .map do |i|
#     puts "done #{i}"
# end
# Thread.list.each{|t| puts t.inspect}