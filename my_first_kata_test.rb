require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase

def test_no_book_cost_0_eur

	
    assert_equal 0, basket([])
  end



def test_single_book_cost_8_eur

    assert_equal 8, basket([1])
  end

  def test_two_books_5_per_cent_discount

  	assert_equal 15.2, basket([1,2])
  end

  def test_three_books_10_per_cent_discount

  	assert_equal 21.6, basket([2,3,1])
  end

  def test_four_books_20_per_cent_discount
  	assert_equal 25.6, basket([5,1,3,4])
  end
  
   def test_five_books_25_per_cent_discount
  	assert_equal 30, basket([1,2,3,4,5])
   end

  def test_four_books_wich_3_diff_get_10_on_them
   	assert_equal 29.6, basket([1,2,3,3])
  end

 def test_2_of_first_2_of_second_2_of_third_1_of_fourth_1_of_fifth
  	assert_equal 51.20, basket([1,1,2,2,3,3,4,5])
  end


	def test_special
  	assert_equal 141.20, basket([1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4,5,5,5,5])
  end


	def test_special_2
  	assert_equal 151.20, basket([1,1,2,2,2,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,5,5,5])
  end


end

