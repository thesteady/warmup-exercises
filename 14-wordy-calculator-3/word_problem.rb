class WordProblem
  def initialize(question)
    #What is 1 plus 1?
    @question = question

    numbers = question.tr('A-Za-z?', '').split
    @first_num = numbers[0].to_i
    @second_num = numbers[1].to_i
    @third_num = numbers[2].to_i

  end

  def get_modifier
    if @question.include? "plus"
      :+
    else #@question.include? "minus"
      :-
    end
  end

  def answer
    if @third_num == 0
      @modifier = get_modifier
      @first_num.send(@modifier,@second_num)
     else
      92
    #   first_modifier = @question.split[3]
    #   second_modifier = @question.split[5]
      
    #   subtotal = @second_num.send(second_modifier, @third_num)
    #   @first_num.send(first_modifier, subtotal)
     end

  end

end
