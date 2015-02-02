require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase


  def test_single_book_cost_8_eur
    assert_equal 8, basket(1)
  end

  def test_two_books_5_per_cent_discount

  	assert_equal 15.2, basket(2)
  end

  def test_three_books_10_per_cent_discount

  	assert_equal 21.6, basket(3)
  end

  def test_four_books_20_per_cent_discount
  	assert_equal 25.6, basket(4)
  end
  
  def test_five_books_25_per_cent_discount
  	assert_equal 30, basket(5)
  end

  def test_four_books_wich_3_diff_get_10_on_them
  	assert_equal 29.6, basket(4,3)
  end

end

