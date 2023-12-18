

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def multiply(x, y)
  x * y
end

def divide(x, y)
  x / y
end

puts 'suchki'
puts 'Select operation.'
puts '1. Add'
puts '2. Subtract'
puts '3. Multiply'
puts '4. Divide'

choice = gets.chomp

print 'Enter first number: '
num1 = gets.chomp.to_f

print 'Enter second number: '
num2 = gets.chomp.to_f

case choice
when '1'
  puts "#{num1} + #{num2} = #{add(num1, num2)}"
when '2'
  puts "#{num1} - #{num2} = #{subtract(num1, num2)}"
when '3'
  puts "#{num1} * #{num2} = #{multiply(num1, num2)}"
when '4'
  puts "#{num1} / #{num2} = #{divide(num1, num2)}"
else
  puts 'Invalid input'
end

