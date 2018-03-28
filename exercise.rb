class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
	toks = str.split(/\s+|[?!.,;:]/)
	toks.each do |s|
		if s.length > 4	
				if s.match(/^[A-Z]/)
					str.sub!(s, "Marklar")
				else
					str.sub!(s, "marklar")
				end
		end
	end
	return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
	fibs = self.fibonacci(nth)
	tot = 0
	i = 0
	while i < nth do
		if fibs[i] % 2 == 0
			tot += fibs[i]
		end
		i += 1
	end
	return tot
  end

	def self.fibonacci(max)
		nums = Array.new(max)
		nums[0] = 1
		nums[1] = 1
		i = 2
		while i < max do
				nums[i] = nums[i - 1] + nums[i - 2]
				i += 1
		end
		return nums
	end
end
