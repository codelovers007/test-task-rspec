class Calculator
	SPLIT_DELIMITERS_REGEX = /,|\n/ # Split string by comma and \n

	def self.add(numbers)
		return 0 if numbers.empty?
		numbers.split(',').map(&:to_i).sum
		numbers.split(SPLIT_DELIMITERS_REGEX).map(&:to_i).sum
	end
end