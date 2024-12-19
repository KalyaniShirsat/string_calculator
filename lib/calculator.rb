class Calculator
  def self.add(numbers_string)
    return 0 if numbers_string.empty?

    # Add the numbers
    numbers_string.gsub('\n', ',').split(',').sum(&:to_i)
  end
end
