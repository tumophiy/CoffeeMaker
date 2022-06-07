# frozen_string_literal: true

# it describes person and questions you may ask them
class Barista
  attr_accessor :happiness
  attr_reader :fullname

  # hapiness automatickly = 0,5
  def initialize(fullname)
    @happiness = 0.5
    @fullname = fullname
  end

  def what_is_your_name
    puts "My name is #{@fullname}. I'm glad to meet you"
  end

  def minus_happines
    return 'your barista is dead tired, sorry for not helping you' unless @happiness.positive?

    @happiness -= 0.1
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
end
