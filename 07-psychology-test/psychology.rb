require 'highline/import'

class Questionairre
  def initialize
    @counter = 0
  end
  
  def random_question
    if @counter <10
      #options = [loves, feeling, wants_candy, fav_teach, pizza, fart, ugly, your_mom, coffee, color]
      options.sample
      @counter +=1
    else
      "Goodbye!"
    end
  end

  def options
    loves = ask "What do you love?"
    feeling = ask "How are you today?" do |q|
      q.default = "good"
    end
    wants_candy = ask "Do you want <%= color('candy',RED) %>?" do |q|
      q.validate = /^(yes|no)$/
    end

    color = say "Your favorite color is <%= color('blue',BLUE) %>"

    fav_teach = ask "Who is your favorite teacher?" do |q|
      q.validate = /^(Frank|Your Mom)$/
    end

    pizza = ask "What's your favorite pizza topping?"

    fart = ask "Did you just fart?"
    ugly = ask "Why are you so ugly?"
    your_mom = say "Tell your mom hi for me."
    coffee = say "will you get me some coffee?"
  end
end


survey = Questionairre.new
survey.random_question
