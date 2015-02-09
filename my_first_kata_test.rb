require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase
  def test_no_books_equal_0
    assert_equal 0, calculate([]) 
  end

  def test_1_book_equal_8
    assert_equal 8, calculate([1])
  end

  def test_2_books_equal_16
    assert_equal 16, calculate([2])
  end

  def test_3_books_equal_24
    assert_equal 24, calculate([3])
  end

  def test_2_different_books_equal_16
    assert_equal 16, calculate([1, 1])
  end    
end

def calculate(basket)
  Basket.new(basket).calculate
end