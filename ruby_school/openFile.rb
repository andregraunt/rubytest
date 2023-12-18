file_path = "passwordsFull.txt"

f = File.new(file_path, "r")

lines = f.readlines
n = 1.to_i

while true do 
# puts lines.sample

print  ' - '+ "#{n}" +'-'"#{lines.sample}" 
# puts n
 n += 1

# sleep 0.3

end


