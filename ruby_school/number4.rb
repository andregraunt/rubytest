# sum = 1
# 100.times{|n| puts sum *= n.next}

# def factorial(n)
#     result = 1
#     while n > 1
#       result *= n
#       n -= 1
#     end
#     return result
#   end
#   puts factorial(5) 

# def factorial(n)
#     result = 1
#     for i in 1..n
#       result *= i
#     end
#     return result
#   end
#   puts factorial(5)

def factorial(n)
    (1..n).inject(:*) || 1
  end
  puts factorial(4)


  def factorial(n)
    (1..n).reduce(:+) || 1
  end
  puts factorial(5)

  def summa(n)
    puts (1..n).inject(:*)
  end
  summa(6)
