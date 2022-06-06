class TwoSum
	def twoSum(nums, target)
		if nums.length < 2 || nums.length > 10000
			raise StandardError.new 'Not valid amount of numbers'
		end

		if target < -1000000000 || target > 1000000000
			raise StandardError.new 'Not valid value of given target'
		end

		nums.each do |el|
			if el < -1000000000 || el > 1000000000
				raise StandardError.new 'Not valid value of given number'
			end
		end

		hash = Hash.new
		for i in (0..nums.length - 1)
			diff = target - nums[i]
			if hash.has_key?(diff)
				result = [hash[diff], i]
				return result
			end

			hash.store(nums[i], i)
		end

		raise StandardError.new "No results"
	end
end