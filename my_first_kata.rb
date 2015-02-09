class Basket
  PRICE = 8

  def initialize(books)
    @books = books
  end

  def calculate
    if @books.length==@books.uniq.length&&@books.length!=1
      calculate_discounted_items 
    else
     calculate_non_discounted_items
   end
  end

  private


  def calculate_non_discounted_items
    @books.length*PRICE
  end

  def calculate_discounted_items
    @books.uniq.length*PRICE*0.95
  end
end