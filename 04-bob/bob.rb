loop do
printf "Say something to Bob:"
input = gets.chomp

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
