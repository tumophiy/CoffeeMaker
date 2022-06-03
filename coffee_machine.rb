# module Barista
#   # attr_reader :happiness
#   @count_of_baristas = 0
#   attr_accessor :count_of_baristas
# end

class CoffeeMachine
  # include Barista
  # self.count_of_baristas = 0
  attr_reader :water_capacity, :happiness

  def initialize(hash)
    @name = hash[:name]
    @happiness = 0.5
    @water_capacity = hash[:water_capacity]
    @menu = hash[:menu]
    # self.count_of_baristas += 1
  end

  def what_can_you_serve
    puts 'OUR MENU'.center(20, '-')
    @menu.each.with_index(1) { |element, index| puts "#{index}: #{element}" }
    '-' * 20
  end

  # def self.count_of_baristas
  #   "Count of all baristas = #{self.count_of_baristas}"
  # end

  def cook(item_name)
    return 'your barista is dead tired, sorry for not helping you' unless @happiness.positive?

    @happiness -= 0.1
    return 'no water, please fill container' unless @water_capacity.positive?

    @water_capacity -= 0.1
    if @menu.include?(item_name.downcase)
      puts boil_water
      "Here you go, your #{item_name})"
    else
      "We don't do #{item_name} now( Consider other items in our menu.
      You can get full list calling .what_can_you_serve method"
    end
  end

  def fill_container(liters)
    @water_capacity = liters
  end

  def talking_to_barista(string)
    if string.include?(':)')
      @happiness += 0.2
    elsif string.include?('please boil_water')
      boil_water
    else
      'I don\'t wanna talk to you(('
    end
  end

  def sorry_but_what_is_your_name
    @name
  end

  def to_s
    "I'm #{@name}, my happiness = #{@happiness * 100}% and water capacity of my coffe machine is #{@water_capacity}l."
  end

  private

  def boil_water
    'water is boiling...'
  end
end

class TypeMachine < CoffeeMachine
  def initialize
    #here should be added parameter called @type
  end

  def what_type?
    "your machine is #{type}"
  end
end
class SizeMachine < TypeMachine
  def initialize(size)
    super()
    @size = size
    @type = "auto"
  end

  def to_s
    "I'm #{@name}, my happiness = #{@happiness * 100}% and water capacity of my coffe machine is #{@water_capacity}l. 
    and i have size of #{@size}"
  end

  def fit?(array_of_sizes)
    return true if size.all?.with_index { |value, index| value > array_of_sizes[index] }
    false
  end
end

class BigMachine < SizeMachine
  def initialize(size = [40, 60, 50])
    super()
  end
end

class SmallMachine < SizeMachine
  def initialize(size = [20, 20, 20])
    super()
  end
end

class V50 < TypeMachine
  def initialize
    @type = "mechanical"
  end
end

john = CoffeeMachine.new({ name: 'john', water_capacity: 0.2, menu: %w[capuchino latte] })
# p CoffeeMachine.count_of_baristas
p john.what_can_you_serve
p john.cook('latte')
p john.happiness
p john.talking_to_barista('please boil_water')
puts john
# test line

bigmachine = BigMachine.new({ name: 'tim', water_capacity: 0.3 })
puts bigmachine
