require_relative './say'
require 'minitest/autorun'
require 'minitest/pride'

class SayTest < MiniTest::Unit::TestCase
  def test_say_zero
    assert_equal "zero", Say.new(0).english
  end

  def test_raise_errore
    assert_raises ArgumentError do
      Say.new(-1).english
    end
  end
end
