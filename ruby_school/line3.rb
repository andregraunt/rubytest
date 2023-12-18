# File.open("example.txt", "w") do |file|
   
#     file.write(gets)
#   end


# file.write("Hello, world!\r vasa")
    # file.write (" ") 
    n = 0
  while n<= 3  do
  File.open("example.txt", "a") { |file| file.write(gets) }
  
  n += 1
  end
