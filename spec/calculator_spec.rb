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
	end
end