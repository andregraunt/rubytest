# Ruby knows what you
# mean, even if you
# want to do math on
# an entire Array

cities  = %w[ London
              Oslo
              Paris
              Amsterdam
              Berlin ]
visited = %w[Berlin Oslo]

puts 'I still need ' +
     'to visit the ' +
     'following cities:',
     cities - visited

print 'kak tebya zovut?'
myname = gets.chomp

print 'vash pozivnoy?'
clichka = gets

puts 'hello my frind - my ' + myname + ' ' + clichka

# puts client1 +
#   " jivet v " +
#   location1 +
#   ", ego telefon nomer - " +
#   tel1 +
#   ", i emu = " +
#   age1 + " let"
#
print 'enter x'
x = gets.chomp

print 'enter y'

y = gets.to_i

print 'z'
z = gets.to_f

# i = u.to_f + r.to_f + b.to_f

puts 'x = ' + x + ' y = ' + y.to_s + ' z = ' + z.to_s
