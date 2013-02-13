## Letter Values

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

class Scrabble

  def self.score(word)
    letters = word.split("")
    points = 0
    letters.each do |letter|
      case letter
      when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' then points +=1
      when 'd', 'g' then points += 2
      when 'b', 'c', 'm', 'p' then points +=3
      when 'f', 'h', 'v', 'w', 'y' then points +=4
      when 'k' then points += 5
      when 'j', 'x' then points += 8
      when 'q,', 'z' then points += 10
      else puts "this isn't a letter"
      end
    end
    puts "Your word #{word} is worth #{points} points."
  end

end

Scrabble.new
Scrabble.score("hello")
Scrabble.score("cabbage")