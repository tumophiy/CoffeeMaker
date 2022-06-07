# frozen_string_literal: true

require_relative 'barista'
require_relative 'private_methods_of_coffe_machine'
require_relative 'menu'
require_relative './size/size_machine'
require_relative './size/small_mahcine'
require_relative './size/big_machine'
require_relative 'water_container'

# this class contains methods that can surve you a drink or help you with your choice
class CoffeeMachine
  include PrivateMethodsOfCoffeMachine

  def initialize(name:, barista:, water:, menu:)
    @name = name
    @barista = barista
    @water = water
    @menu = menu
  end

  def barista_name
    @barista.what_is_your_name
  end

  def what_can_you_serve
    puts 'OUR MENU'.center(20, '-')
    @menu.menu.each.with_index(1) { |element, index| puts "#{index}: #{element}" }
    '-' * 20
  end

  def cook(item_name)
    @water.minus_water
    @barista.minus_happines
    @menu.coffee_procces(item_name)
  end

  def sorry_but_what_is_your_name
    @name
  end

  def to_s
    "I'm #{@name}, happiness of #{@barista.fullname} = #{@barista.happiness * 100}% and water capacity of my coffe machine is #{@water.water_capacity}l."
  end

  private

  def boil_water
    'water is boiling...'
  end
end

# combine

# creation of a WaterContainer
water_container1 = WaterContainer.new(5)
puts water_container1.water_capacity

puts('-' * 20)
# creation of SmallMachine
small = SmallMachine.new([20, 20, 20])
small.what_type?
puts small.fit?([21, 21, 21])

puts('-' * 20)
# creation of a Barista
intern = Barista.new('John')
intern.what_is_your_name

puts('-' * 20)
# creation of a menu
menu1 = Menu.new(['Americano', 'Black Coffee', 'Latte'])
# menu1.please_tell_us_about_your_menu
menu1.coffee_procces('Americano')

puts('-' * 20)
# creation of a CoffeeMachine
ninja_cm401 = CoffeeMachine.new(name: 'ninja_cm401', barista: intern, water: water_container1, menu: menu1)
puts ninja_cm401
ninja_cm401.barista_name

# cooking a coffee
ninja_cm401.cook('Latte')
ninja_cm401.what_can_you_serve
