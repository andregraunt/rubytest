# Output "I love Ruby"
say = 'I love Ruby'
puts say

# Output "I *LOVE* RUBY"
say['love'] = '*love*'
puts say.upcase

# Output "I *love* Ruby"
# five times3.times { puts say }

a = [2, 3, 10, 14, 15, 17, 5, 7, 8, 9, 11, 23, 16, 9, 6, 5\
, 6, 4, 13, 12]

b = a.sample
puts "#{b}"
i = 1

while i <= b
  # print "random nomber = #{a.sample}"
  # puts 'vasa sdelal ' + i.to_s + ' raz'
  puts " vivedim ego #{i}  raz"
  puts '=' * 80
  sleep(0.2)

  i += 1
end

# puts b.methods
puts b.__id__
puts i.__id__
puts say.class

