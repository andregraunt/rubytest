# 10.times do
#     puts"vasa "
# end

input = File.open "passwordsFull.txt", "r"

while (line = input.gets)
line.strip!
    if line.length == 6
        
        
    puts line
    end
end
