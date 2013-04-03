class Binary
  attr_reader :binary, :places
  def initialize(binary)
    @binary = binary.tr('a-zA-Z', '').reverse.split("")
    @places = binary.split("").count
  end

  def to_decimal
   binary.each
  end

end
