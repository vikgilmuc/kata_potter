class Basket
  PRICE = 8
  DISCOUNTS =[0,0,0.05,0.10, 0.20, 0.25]

  def initialize(books)
    @books = books
    @accumulator= 0 
  end

  def calculate
  
      @accumulator += calculate_discounted_items 
      @books.uniq.each{|x|@books.delete_at(@books.index(x))}
      if @books.length > @books.uniq.length
        calculate 
      else
        return @accumulator += calculate_non_discounted_items
      end

    
  end

  private


  def calculate_non_discounted_items
    @books.length*PRICE
  end

  def calculate_discounted_items
    @books.uniq.length*PRICE*(1-DISCOUNTS[@books.uniq.length])
  end



end