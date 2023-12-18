def byte(a)

    2**a
end

numbers = (0..16).to_a
for i in numbers
    # puts byte(i)
    # puts "bit #{numbers[i]} * 2 = #{byte(i)}"
    puts "  2 ** bit #{numbers[i]} = #{byte(i)}"


end

puts 2 ** numbers[16] / 2


# puts (1..100).sum
# # puts kube(3)

# puts numbers[1]
# # total = 0
# for i in numbers
#     puts "chislo #{numbers[0]} v kube = #{ kube(i)}"
# end
# puts 2 ** 4
# puts 2 ** 5
# puts 2 ** 0
# puts 2 ** 7
