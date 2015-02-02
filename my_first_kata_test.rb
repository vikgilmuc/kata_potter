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


end
