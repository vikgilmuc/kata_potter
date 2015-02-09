require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase
  def test_no_books_equal_0
    assert_equal 0, calculate([]) 
  end

  def test_1_book_equal_8
    assert_equal 8, calculate([1])
  end

  def test_2_equal_books_equal_16
    assert_equal 16, calculate([1,1])
  end

  def test_2_different_books_equal_5_per_cent_discount
    assert_equal 15.2, calculate([1,2])
  end

  # def test_3_different_books_10_per_cent_discount
  #   assert_equal 16, calculate([1, 1])
  # end    
end

def calculate(basket)
  Basket.new(basket).calculate
end