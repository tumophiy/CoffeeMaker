class CoffeeMachine
  @@count_of_baristas = 0
  attr_reader :water_capacity, :happiness

  def initialize(hash)
    @name = hash[:name]
    @happiness = 0.5
    @water_capacity = hash[:water_capacity]
    @menu = hash[:menu]
    @@count_of_baristas += 1
  end

  def what_can_you_serve
    puts 'OUR MENU'.center(20, '-')
    @menu.each.with_index(1) { |element, index| puts "#{index}: #{element}" }
    '-' * 20
  end

  def self.count_of_baristas
    "Count of all baristas = #{@@count_of_baristas}"
  end

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

john = CoffeeMachine.new({ name: 'john', water_capacity: 0.2, menu: %w[capuchino latte] })
p CoffeeMachine.count_of_baristas
p john.what_can_you_serve
p john.cook('latte')
p john.happiness
p john.talking_to_barista('please boil_water')
puts john
# test line
