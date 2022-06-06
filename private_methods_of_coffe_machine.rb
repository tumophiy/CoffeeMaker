# frozen_string_literal: true

# here are couple methods from private section in CoffeeMachine
module PrivateMethodsOfCoffeMachine
  private
  
  def serving_a_drink(item_name)
    puts boil_water
    "Here you go, your #{item_name})"
  end

  def cannot_serve(item_name)
    "We don't do #{item_name} now( Consider other items in our menu.
    You can get full list calling .what_can_you_serve method"
  end
end
