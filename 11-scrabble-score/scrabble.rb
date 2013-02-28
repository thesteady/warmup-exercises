class Scrabble
  
  def self.score(word)
    puts "You played #{word}."
    letters = word.upcase.split("")
    wordscore = 0
    letters.each do |letter|
      case letter
      when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' then wordscore += 1
      when 'D', 'G' then wordscore +=2
      when 'B', 'C', 'M', 'P' then wordscore +=3
      when 'F', 'H', 'V', 'W', 'Y' then wordscore +=4
      when 'K' then wordscore +=5
      when 'J', 'X' then wordscore +=8
      when 'Q', 'Z' then wordscore +=10
      end
    end
    puts "total score #{wordscore}"
  end
end

puts "Welcome to Scrabble!"

Scrabble.score("cabbage")
Scrabble.score("hippopotamus")
Scrabble.score("FRANKLIN")
