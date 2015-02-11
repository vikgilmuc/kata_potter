class Basket
  PRICE = 8
  DISCOUNTS =[0,0,0.05,0.10, 0.20, 0.25]

  def initialize(books)

    @books = books
    @books_origin = @books.dup
    @accumulator = 0 
    @packs = 0
    
    
  end

  def calculate
    min_price=0
    for @packs in 2..5 
      @books=@books_origin.dup
      @accumulator=0
      this_min= calculate_lowest(@packs)
      min_price= this_min if (this_min<min_price || min_price==0)
    end
      min_price
  end




  private


  def calculate_lowest(packs)

       
      if @books.length >= @books.uniq.length && @books.uniq.length > 1
       
        uniq_pack = @books.uniq.take(packs) 
        @accumulator += calculate_discounted_items (uniq_pack.length )
        uniq_pack.each{|x|  @books.delete_at(@books.index(x)) }
        calculate_lowest(packs)

      else

       @accumulator += calculate_non_discounted_items

      end
        
        @accumulator 

  end



  def calculate_non_discounted_items
    @books.length*PRICE
  end

  def calculate_discounted_items(pack_length)
    pack_length*PRICE*(1-DISCOUNTS[pack_length])
  end



end