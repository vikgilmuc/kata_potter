class Basket
  PRICE = 8

  def initialize(books)
    @books = books
    fill_books_when_empty
  end

  def calculate
    if @books.length==@books.uniq.length&&@books.length!=1
      calculate_discounted_items 
    else
     calculate_non_discounted_items
   end
  end

  private

  def fill_books_when_empty
    @books = [0]   if @books.empty?
  end

  def calculate_non_discounted_items
    if @books[0]!=0
    @books.length*PRICE
    else
    0
    end
  end

  def calculate_discounted_items
    puts "in_discounted "
    @books.uniq.length*PRICE*0.95
  end
end