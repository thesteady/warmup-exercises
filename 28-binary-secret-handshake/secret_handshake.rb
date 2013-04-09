class SecretHandshake
  attr_reader :code

  def initialize(code)
    @code = code.reverse.split("").map {|num| num.to_i }
  end

  def commands
    actions = []
    code.each_with_index do |num, i|
        actions << lookup_action[i.to_s] unless num == 0
    end

    # actions = code.each_with_index.collect do |num, i|
    #   lookup_action[i.to_s] unless num == 0
    # end

    if code[4] == 1
      actions.pop
      actions.reverse
    elsif actions.empty?
      [""]
    else
      actions
    end
  end

  def lookup_action
    {'0' => 'wink', '1' => 'double blink', '2' => 'close your eyes','3' => 'jump'}
  end
end
