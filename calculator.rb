class Calculator
	class NegativeNumbersException < StandardError; end # Define custome exception for negative numbers

	def self.add(numbers)
		return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]

      values = numbers.split(/#{delimiter}|\n|,/).map(&:to_i) # Split by diffrent delimiter by regex
    else
      values = numbers.split( /,|\n/).map(&:to_i) # Split by comma and \n by regex
    end

		negatives = values.select { |n| n < 0 }
		raise NegativeNumbersException, "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

		values.sum
	end
end