# frozen_string_literal: true

# this class contains info about possible coffe types as well
# as additional info like how many water is neaded to cook it
class Menu
  attr_reader :menu

  def initialize(menu)
    @menu = menu
  end

  def coffee_procces(item)
    puts "Great choice with #{item}, your coffee will be ready in 5s"
    (1..5).each { |value| puts "#{value}s" }
    puts "Here you go. Your #{item}"
  end

  def please_tell_us_about_your_menu
    @menu.each.with_index(1) { |item, idx| puts "#{idx}). #{coffee_description(item)}" }
  end

  private

  def coffee_description(item)
    case item
    when 'Americano' then americano_description
    when 'Black Coffee' then black_coffee_description
    when 'Cappuccino' then cappuccino_description
    when 'Espresso' then espresso_description
    when 'Latte' then latte_description
    when 'Macchiato' then macchiato_description
    when 'Mocha' then mocha_description
    when 'Cold Coffee Variety' then cold_coffee_variety_description
    when 'Affogato' then affogato_description
    when 'Cold Brew' then cold_brew_description
    when 'Frappuccino' then frappuccino_description
    when 'Iced Coffee' then iced_coffee_description
    when 'Mazagran' then mazagran_description
    end
  end

  def americano_description
    'An Americano is a shot of espresso that is diluted with hot water and completed with a light layer of cream at the top.

    Americanos are rich, intense, and distinctive in taste. The strength of the drink is dependent on the number of espresso shots you add. For many, it is the ideal way to indulge in the smoothness of espressos while maintaining the consistency of a drip-brew.

    One of the best benefits of drinking Americanos is the lower-calorie and nonexistent fat counts compared to regular coffee.'
  end

  def black_coffee_description
    'Black coffee is the simplest and healthiest coffee type available. The ground coffee beans are steamed by hot water within a drip machine, and that is it. Because it is served as is, the coffee will taste strong, and be at its most bitter.

      Many coffee drinkers consider black coffee as an acquired taste because of how bitter and ashy it comes. The health benefits to this simple brew are tempting and may make up for the extreme bitterness. Like eating dark chocolate or drinking certain alcohols, it takes time to adjust to the taste so you can discern the finer flavors hidden beneath that extreme first impression.'
  end

  def cappuccino_description
    'Cappuccinos are a fan favorite when visiting coffee shops. This is especially the case because of the latte art decorations that are often drawn into the steamed milk foam.

This popular drink is made by layering a balanced ratio of espresso, steamed milk, and milk foam in that order. This is to ensure the cappuccinos’ bold and rich flavors, as well as to maintain its thick, foamy texture. It is common to add flavored syrups and other toppings, such as chocolate powder, to further sweeten the deal.

Popular flavored syrups are caramel, chocolate, and vanilla, but the possibilities are not limited to these three. It has been revealed through medical studies that a cup of a cappuccino a day without exceeding 180 ml.'
  end

  def espresso_description
    'Espresso is not necessarily a type of coffee, but a way to make coffee. The difference is the amount of water used to make espressos versus regularly brewed coffee.

    Because they are made with a shot of water instead of a liter of water per cup of ground coffee, espressos are basically highly concentrated coffee. Because of this, you can expect espressos to have a more heightened array of flavors compared to your regular cup of coffee.'
  end

  def latte_description
    'Thanks to their versatility in customization, Lattes are among the most popular coffee choices. Anything from sweet to herbal can be added to them, and latte art can be added to complete the drink. Lattes are similar to cappuccinos because they are also made with espresso, steamed milk, and milk foam.

    The ratio of ingredients is what separates the two drinks; however: while cappuccinos have equal ratios, lattes have more steamed milk. The ingredients in lattes are also mixed together instead of being layered, like what can be found in cappuccinos. Compared to cappuccinos and the many other espresso-based drinks, lattes are not very strong in taste.

    This is because they are heavier with milk than coffee. Due to being milkier than their counterparts, they are sweeter than most coffee, though still not as sweet as you will find in mochas.'
  end

  def macchiato_description
    'A fan favorite of coffee drinkers who enjoy the bitterness that naturally comes in coffee. There are two different ways to make this drink: more espresso than milk to make an espresso macchiato, or more milk than espresso to make a latte macchiato.

    That said, macchiatos are similar to lattes and cappuccinos, and it is not uncommon for people to mistake the three for each other as it is.

    The more popular macchiatos bear the most similarities with lattes because they are both heavies with milk. Popular drizzles to add to the creamy drink are vanilla, caramel, and hazelnut.'
  end

  def mocha_description
    'Mocha, which is actually short for mochaccino, is another popular coffee variation, right up there with a latte, and for a good reason.

    It is a top choice when you want to satisfy your sweet tooth needs. This is another type of espresso beverage, and aptly named for its pleasant combination of sweet chocolate meeting the roasted goodness coffee Mochas are made with the expected shot of espresso and hot milk, but completed with chocolate additions, and whipped cream at the top.'
  end

  def cold_coffee_variety_description
    'The above-addressed coffees were only examples of what hot coffees can be found at a cafe, or made at home. There are many more possibilities in that category, just as there are many possibilities in the cold coffee category. As popular as hot coffee is, especially when starting the day. Cold coffee offers benefits that can’t be disputed.

    A cool but energizing drink in summer, for instance, cannot be beaten by a hot cup. It is also proven to be easier on your stomach than hot coffee. Due to how acidic hot coffee is, your acid reflux is more likely to get irritated, and you may struggle with indigestion or heartburn.'
  end

  def affogato_description
    'Affogato technically is not a beverage, but it is still coffee-based. Affogato is actually a dessert that is meant to either be slowly sipped or enjoyed with a spoon. It is typically made with vanilla gelato or ice cream as the primary dessert and completed with a shot of hot espresso.

    It is a coffee lover’s all-in-one after-dinner drink, coffee, and dessert. Because its base is the dessert, it is considered a cold brew, though arguments can be made that it is a hot brew because the shot of espresso is technically hot.'
  end

  def cold_brew_description
    'Cold brew coffee is a popular type of coffee all in itself, too. It is also an extremely popular type of coffee.

    Put simply; it is ground coffee beans that are steeped in room temperature water for 6 to 36 hours, all depending on how strong you want the brew to be. After it has steeped long enough, it is filtered so you can add cold milk or cream.

    When ready, it should taste sweeter, albeit milder, compared to other cold coffees. It is also the least acidic cold coffee. While it is true that cold brew coffees have less caffeine to them compared to the hotter types of coffee, that does not mean cold brew is weaker than its counterpart.'
  end

  def frappuccino_description
    'The word. “Frappuccino’*. is trademarked by Starbucks, meaning it cannot be used by other companies.'
  end

  def iced_coffee_description
    'There is a common belief that iced coffee is just hot coffee that has been refrigerated, and while there may be places where this actually happens, it turns out.

    This is not actually true. Granted, it is okay to turn hot coffee into the cold. For many, that may be the easier means to get a hold of iced coffee. It just is not the official means of making iced coffee. It turns out. Iced coffee has its own brewing method that involves cold or room temperature water.

    Ideally, a cold coffee brewed best is one that has little to no bitterness or sourness and is the smoothest coffee you will ever enjoy.'
  end

  def mazagran_description
    'Mazagrans is an interesting combination of coffee, ice. Lime juice, and water. It can be a strange experience the first time you try it. But it may quickly grow on you. Originally, the mazagran was mixed with some alcohol, such as brandy or rum. Many believe the mazagran is even the origin of iced coffee.

    Nowadays, you can still get rum with it, but it is not as common a find nowadays. Today, you will find your mazagran is made with two. Hotshots of espresso poured over ice, with water added at the end to instantly cool it down.'
  end
end
