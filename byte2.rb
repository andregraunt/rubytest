def byte(a)

    2**a
end

numbers = (0..15).to_a

for i in numbers 
    
    
  
    puts " line #{numbers[i]} : 2 ** bit #{numbers[i]} = #{byte(i)}"


end

16.times {|i| puts 2 ** i}
(0..15).each {|i| puts 2 ** i}
puts (1..100).sum + (1..100).sum 
