# frozen_string_literal: true

# checks for valid params, type is auto if no type was given
class SmallMachine < SizeMachine
  def initialize(size, type = 'auto')
    super(size, type)
  end
end
