

sum = 0
# 100.times{|n| puts sum += n.next}
# 100.times{|n| puts sum(:sum => 0) += n.next}
100.times do |n|
    puts sum += n.next
    sleep 0.05
end
