# frozen_string_literal: true

# checks for valid params, type is auto if no type was given
class BigMachine < SizeMachine
  def initialize(size, type = 'auto')
    super(size, type)
  end
end
