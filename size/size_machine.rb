# frozen_string_literal: true

# adding size property
class SizeMachine
  def initialize(size, type)
    @size = size
    @type = type
  end

  # returns true if size of coffemachine is smaller then size from given array in each dimension
  def fit?(array_of_sizes)
    return true if @size.each_with_index.all? { |value, index| value < array_of_sizes[index] }

    false
  end

  def what_type?
    puts "your machine type is #{@type}"
  end
end
