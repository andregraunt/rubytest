# leetcode N1 andregraun@
def two_sum(nums, target)
    nums.each_with_index do |num1, i| 
      nums.each_with_index do |num2, x|

        # if num1 + num2 == target && index1 != index2
        if num1 + num2 == target  

            puts num1
            puts i 
            
            puts num2
             puts x
          return [i, x]
        end
      end
    end
  end

#   nums = [2, 5, 7, 15]
  nums = (1..10000)
#   target = 9
  target = 19999
  result = two_sum(nums, target)
 
  puts result.inspect
#   puts nums.sum
