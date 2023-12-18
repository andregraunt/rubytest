def summa(n)
  n == 1 ? 1 : n + summa(n - 1)
  
end

total = summa(5)
puts total
puts summa(6)

def samee(x)
  if x == 1
    return 1
  else
    
   x + samee(x-1)
   
       
  end
  

  
end

puts samee(1)
puts samee(2)
puts samee(3)
puts samee(4)