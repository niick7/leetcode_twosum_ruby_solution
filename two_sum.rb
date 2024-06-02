def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    return [hash[target - num], index] if hash.include?(target - num)

    hash[num] = index;
  end

  []
end

puts two_sum([2,7,11,15], 9)
puts two_sum([3, 2, 4], 6)
puts two_sum([3,3], 6)