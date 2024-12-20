require 'calculator'

RSpec.describe Calculator do
  context 'when input is a string of non-negative numbers' do
    context 'when the string is a single number' do
      it 'returns the number' do
        expect(Calculator.add('7')).to eq 7
      end
    end

    context 'when the delimiter is a comma' do
      it 'returns sum of the numbers in the string' do
        expect(Calculator.add('5,1,0,2,3')).to eq 11
      end
    end

    context 'when the delimiter is a newline character' do
      it 'returns sum of the numbers in the string' do
        expect(Calculator.add("5\n1,0,2,2")).to eq 10
      end
    end

    context 'when the delimiter is a custom character' do
      it 'returns sum of the numbers in the string' do
        expect(Calculator.add("//;\n1;20\n2")).to eq 23
      end
    end
  end

  context 'when input is an empty string' do
    it 'returns 0' do
      expect(Calculator.add('')).to eq 0
    end
  end

  context 'when input is a string with negative numbers' do
    it 'raises exception' do
      expect {
        Calculator.add('-5,1,-2,3')
      }.to raise_error(ArgumentError, 'negative numbers not allowed -5, -2')
      expect {
        Calculator.add("//;\n3;-1;4")
      }.to raise_error(ArgumentError, 'negative numbers not allowed -1')
    end
  end

  context 'when the custom delimiter is invalid' do
    it 'raises exception' do
      expect { Calculator.add("//;\n5,2") }.to raise_error(ArgumentError, 'invalid delimiter')
    end
  end
end
