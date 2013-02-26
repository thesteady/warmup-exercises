require 'date'

class SpaceAge

  def initialize
  #  @input_age = input_age
  end

  def calc_num_seconds
    333*10**6
    # puts "07-01-1986"
    # "07-01-1986"
  end

  def calc_age_in_years
    years = ((Time.now - calc_num_seconds).to_i)/24/365
    puts years
  end
end


printf "Welcome to the SpaceAge Converter!"
age1 = SpaceAge.new
age1.calc_age_in_years
