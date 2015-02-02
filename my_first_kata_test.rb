require "test/unit"
require_relative "./my_first_kata"

class TestPotter < Test::Unit::TestCase


  def test_single_book_cost_8_eur
    assert_equal 8, basket(1)
  end


end
