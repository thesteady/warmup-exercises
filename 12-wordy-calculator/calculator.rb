class Calculator


#   What is 5 plus 13?

# and returns the answer as an integer.
  def initialize
  end

  def ask(question)
    #What is 1 plus 1
    #find_modifier(question)
    
    numbers = question.tr('A-Za-z?', "").split(" ")
    first_num = numbers[0].to_i
    second_num = numbers[1].to_i
    first_num + second_num
  end


  def find_modifier(question)
    split_q = question.split(" ")
    modifiers = {"plus"=> '+', "minus"=> '-', "times"=> '*'}
    method = ""
    if split_q.include?("plus")
      method = modifier["plus"]
    elsif split_q.include?("minus")
      method = modifier["minus"]
    elsif split_q.include("times")
      method = modifier["times"]
    else
      puts "I don't see a math problem here."
    end
    method
  end

end
