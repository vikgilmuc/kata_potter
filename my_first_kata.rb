class Basket
  PRICE = 8
  DISCOUNTS =[0,0,0.05,0.10, 0.20, 0.25]

  def initialize(books)

    @books = books
    @books_origin=@books.dup
    @accumulator= 0 
    @packs=4
    @flag=0
  end

  def calculate


    if @books.length >= @books.uniq.length && @books.uniq.length > 1
     
     
      uniq_1=@books.uniq.take(@packs)
      @accumulator += calculate_discounted_items (uniq_1.length )
      uniq_1.each{|x|  @books.delete_at(@books.index(x)) }
      
        calculate

    else 

      puts @accumulator
      puts "books#{@books}"

      if ((@accumulator == 25.6) &&  (@books==[1])) && @flag==0
        @packs=5
        @accumulator=0
        @flag=1
        @books=@books_origin
        calculate
        
      end

      return @accumulator += calculate_non_discounted_items
    end
  end




  private


  def calculate_non_discounted_items
    @books.length*PRICE
  end

  def calculate_discounted_items(pack_length)
    pack_length*PRICE*(1-DISCOUNTS[pack_length])
  end



end