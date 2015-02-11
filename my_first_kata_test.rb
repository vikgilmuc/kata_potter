require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase
  def test_no_books_equal_0
    assert_equal 0, calculate([]) 
  end

  def test_1_book_equal_8
    assert_equal 8, calculate([1])
  end

  def test_2_3_equal_books_equal_16_24
    assert_equal 16, calculate([1,1])
    assert_equal 24, calculate([2,2,2])
  end

  def test_2_different_books_equal_5_per_cent_discount
    assert_equal 15.2, calculate([1,2])
    assert_equal 23.2, calculate([1,2,1])
  end

  def test_3_4_5_different_books_10_20_25_per_cent_discount
    assert_equal 21.6, calculate([1, 2, 3])
    assert_equal 25.6, calculate([1, 2, 3, 4])
    assert_equal 30, calculate([1, 2, 3, 4, 5])
  end   


  def test_3_different_books_plus_1_10_percent_plus_8
    assert_equal 29.6, calculate([1, 2, 3, 1])
  end 

  def test_3_different_books_plus_2diff_plus_8
    assert_equal 44.8 , calculate([1, 2, 3, 1, 2 , 1])
  end 

  def test_3_different_books_plus_2diff_plus_8_changed_order
    assert_equal 44.8 , calculate([3, 2, 2, 1, 1 , 1])
  end 

  def test_5_3_diff_books_vs_4_4_books
    assert_equal 51.2 , calculate([1,1,2,2,3,3,4,5])
  end
  




end

def calculate(basket)
  Basket.new(basket).calculate
end