# frozen_string_literal: true

# describes capacity
class WaterContainer
  attr_reader :water_capacity

  def initialize(water_capacity)
    @water_capacity = water_capacity
  end

  # 100 ml will be minused after calling
  def minus_water
    return 'no water, please fill container' unless @water_capacity.positive?

    @water_capacity -= 0.1
  end

  # when calling you have to specify how much water you poured into container
  def fill_container(liters)
    @water_capacity = liters
  end
end
