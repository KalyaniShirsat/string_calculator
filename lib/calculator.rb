class Calculator
  def self.add(numbers_string)
    return 0 if numbers_string.empty?

    # Split string into numbers
    numbers = numbers_string.gsub('\n', ',').split(',')

    # Check for negative numbers
    negative_numbers = numbers.select { |number| number.to_i.negative? }
    if negative_numbers.any?
      raise ArgumentError, "negative numbers not allowed #{negative_numbers.join(', ')}"
    end

    # Add the non-negative numbers
    numbers.sum(&:to_i)
  end
end
