class Calculator
	def self.add(numbers)
		return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]

      numbers.split(/#{delimiter}|\n|,/).map(&:to_i).sum # Split by diffrent delimiter by regex
    else
      numbers.split( /,|\n/).map(&:to_i).sum # Split by comma and \n by regex
    end
	end
end