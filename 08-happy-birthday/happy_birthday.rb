require 'date'

class Bday
def initialize (year, month, day)

  @birthdate = "#{day}-#{month}-#{year}"
end

def parse_date
  birthdate = Date.parse(@birthdate)
  puts birthdate
end

def calc_spanks
  today = Date.today
  puts today

  x = "3"
  puts "calcing spanks"
  return x.to_i
end

def print_spanks
  puts "Happy Birthday!"
  calc_spanks.times do
    "SPANK! #{calc_spanks}"
  end
end
end

printf "What year were you born in?  "
year = gets.chomp
printf "What month were you born in?  "
month = gets.chomp.capitalize
printf "What day of the month were you born on?  "
day = gets.chomp

bday = Bday.new(year, month, day)
bday.parse_date
bday.print_spanks
