require 'ractor'

# Этот код создает два ractor,
# и запускает их в параллельном потоке.
# r1, r2 = Ractor.new, Ractor.new

# Каждый ractor суммирует
# числа от 1 до 10.
# r1.async do
#   sum = 0
#   (1..10).each do |n|
#     sum += n
#   end
#   puts "Ractor 1: #{sum}"
# end

# r2.async do
#   sum = 0
#   (1..10).each do |n|
#     sum += n
#   end
#   puts "Ractor 2: #{sum}"
# end
r1, r2 = Ractor.new do
    sum = 0
    (1..100).each do |n|
     sum += n
    end
    puts "Ractor 1: #{sum}"
  end
  
  r2 = Ractor.new do
    sum = 0
    (1..100).each do |n|
      sum += n
    end
    puts "Ractor 2: #{sum}"
  end

  puts r1
  puts r2

  def luck?
    rand(0..1) == 1
  end
  puts luck?