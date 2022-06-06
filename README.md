# Two Sum Problem with Ruby

## Problem
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

## Explanation
We have an array of numbers and have to return indices of two numbers that they sum is equal to given target. 

### Example
We have an array [2, 7, 11, 15] and target 9.

Now we can iterate throught the array with two indexes and check if they add up to the target.

In Ruby it would look like this:
```ruby
for i in (0..nums.length - 1)
	for j in (i + 1..nums.length - 1)
		if nums[i] + nums[j] == target
			return [i, j]
		end
	end
end
```

This Solution however has time complexity of O(n<sup>2</sup>) because we iterate two times through an array.

## O(n) Solution
When we use HashMap we can iterate only once through an array.

In Ruby it would look like this:
```ruby
hash = Hash.new
for i in (0..nums.length - 1)
	diff = target - nums[i]

	if hash.has_key?(diff)
		return [hash[diff], i]
	end

	hash.store(nums[i], i)
end
```