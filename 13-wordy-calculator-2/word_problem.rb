class WordProblem

  def initialize(question)
    #'What is 1 plus 1?'
    @question= question.split
    @num1, @num2 = question.tr('A-Za-z?','').split(" ")
    get_modifier
  end

  def get_modifier
    modifiers = {"plus" =>:+, "minus" => :-}
    operator = modifiers.inject(:s) do |ans, (k, v)|
      if @question.include?(k)
        puts k.inspect
        ans = v
      end
    end
    puts operator.inspect
    operator
  end

  def answer
    @num1.to_i + @num2.to_i
  end

end
