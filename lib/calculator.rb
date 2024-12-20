class Calculator
  def self.add(numbers_string)
    return 0 if numbers_string.empty?

    # Separate custom delimiter
    numbers = numbers_string.gsub(/\/\/(\D)\n/, '')
    delimiter = $1 || ','

    # Check for invalid delimiters
    if numbers.gsub("\n", delimiter).scan(/[^@(#{delimiter})\d-]/).any?
      raise ArgumentError, 'invalid delimiter'
    end

    # Split string into numbers
    numbers = numbers.gsub("\n", delimiter).split(delimiter)

    # Check for negative numbers
    negative_numbers = numbers.select { |number| number.to_i.negative? }
    if negative_numbers.any?
      raise ArgumentError, "negative numbers not allowed #{negative_numbers.join(', ')}"
    end

    # Add the non-negative numbers
    numbers.sum(&:to_i)
  end
end
