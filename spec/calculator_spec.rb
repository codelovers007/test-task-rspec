# spec/string_calculator_spec.rb

require './calculator'

RSpec.describe Calculator do
	describe '.add' do
		it 'returns 0 for an empty string (ex: "")' do
			expect(Calculator.add("")).to eq(0)
		end

		it 'returns the provided number itself while its single digit' do
			expect(Calculator.add("5")).to eq(5)
		end

		it 'returns the sum of two numbers which is separated by comma' do
			expect(Calculator.add("5,10")).to eq(15)
		end

		it 'returns the sum of multiple numbers which is separated by comma' do
			expect(Calculator.add("5,10,15,20")).to eq(50)
		end

    it 'handles newlines as delimiters' do
      expect(Calculator.add("5\n10,15")).to eq(30)
    end

		it 'supports different delimiters' do
      expect(Calculator.add("//;\n5;5")).to eq(10)
    end

    it 'throws an exception for negative numbers' do
      expect { Calculator.add("5,-2,6,-7") }.to raise_error(Calculator::NegativeNumbersException, "negative numbers not allowed: -2, -7")
    end
	end
end