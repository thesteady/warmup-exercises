require 'minitest/autorun'
require 'minitest/pride'
require_relative './binary'

class BinaryTest < MiniTest::Unit::TestCase
  def test_binary_1_is_decimal_1
    assert_equal 1, Binary.new("1").to_decimal
  end

  def test_binary_10_is_decimal_2
    assert_equal 2, Binary.new("10").to_decimal
  end

  def test_binary_11_is_decimal_3
    assert_equal 3, Binary.new("11").to_decimal
  end

  def test_binary_100_is_decimal_4
    assert_equal 4, Binary.new("100").to_decimal
  end

  def test_binary_1001_is_decimal_9
    assert_equal 9, Binary.new("1001").to_decimal
  end

  def test_binary_11010_is_decimal_26
    assert_equal 26, Binary.new("11010").to_decimal
  end

<<<<<<< HEAD
  def test_binary_10001101000_is_decimal_1028
=======
  def test_binary_10001101000_is_decimal_1128
    skip
>>>>>>> abc1285125d2af355dd0e42cdefc72640b890ab7
    assert_equal 1128, Binary.new("10001101000").to_decimal
  end

  def test_invalid_binary_is_decimal_0
    assert_equal 0, Binary.new("carrot").to_decimal
  end
end
