class WordProblem
  # 'What is 1 plus 1?'
  # 'What is 1 plus 1 plus 1?'

  attr_reader :question, :num1, :num2, :num3, :mod1
  def initialize(question)
    @question = question
    if question.split.count >= 7
      #its a double addition problem
      q = question.tr('a-zA-Z', "").split
      @num1 = q[0].to_i
      @num2 = q[1].to_i
      @num3 = q[2].to_i
      @mod1 = modifier(question.split[3])
      @mod2 = question.split[-2]
    else
      #its a single addition problem
      q = question.tr('a-zA-Z', "").split
      @num1 = q[0].to_i
      @num2 = q[1].to_i
      @mod1 = modifier(question.split[3])
    end

  end

  def modifier(mod_num)
    if mod_num == "minus"
      :-
    elsif mod_num == "plus"
      :+
    elsif mod_num == "multiplied"
      :*
    else
      :/
    end
  end

  def answer
    if question.split.count >= 7
      sub = num2.send(mod2, num3)
      num1.send(mod1, sub)
    else
      num1.send(mod1, num2)
    end
  end
end
