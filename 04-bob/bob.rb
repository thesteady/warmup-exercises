<<<<<<< HEAD


class Bob
  
  def initialize
    loop do
      printf "Say something to Bob:"
      @input = gets.chomp
      sep = @input.split
      reply(@input)
    end
  end

  def reply(input)
    if input == "Bob"
      puts "Fine. Be that way!"
    elsif input == input.upcase
      puts "Woah, chill out!"
    elsif input.include? "?"
      puts "Sure."
    else
      puts "Whatever."
    end
  end

  def l33t_sP34k(input)
    puts @sep
  end

end

Bob.new
=======
class Bob
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
