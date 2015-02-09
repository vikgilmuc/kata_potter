class Basket
  PRICE = 8

  def initialize(books)
    @books = books
    fill_books_when_empty
  end

  def calculate
    first_item_in_basket * PRICE
  end

  private

  def fill_books_when_empty
    @books = [0]   if @books.empty?
  end

  def first_item_in_basket
    @books.first
  end
end