require_relative './chunks'
require 'minitest/autorun'
require 'minitest/pride'

class ChunksTest < MiniTest::Unit::TestCase
  def test_splits_long_number
    answer = Chunks.new(1234567890).split
  # => [1, 234, 567, 890]
  array = [1, 234, 567, 890]
  assert_equal array, answer
  end

  def test_1000
    answer = Chunks.new(1000).split
    array = [0, 0, 1, 0]
    assert_equal array, answer
  end

  def test_100s
    answer = Chunks.new(999).split
    array = [0, 0, 0, 999]
    assert_equal array, answer
  end
end
