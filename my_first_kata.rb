#my_first_kata

	BOOK_PRICE = 8
	DISCOUNT =[ 1, 1, 0.95, 0.90, 0.80, 0.75 ]

def basket(shop_items)

puts shop_items.length
#puts shop_items.uniq

price = 0

price_array=[]

shop_items_by_index_original=[]

(0..4).each { |i| shop_items_by_index_original[i]=shop_items.count(i+1)}

shop_items_by_index_original.sort!

m=0





mega_lots_array=[]


(2..5).reverse_each {|v| 
	
	shop_items_by_index= shop_items_by_index_original.dup 
	puts "array  v #{v}    #{shop_items_by_index }"
	lots_array=[0,0,0,0]
	
	if shop_items_by_index[v-5]!=0 


		(2..v).reverse_each{|x|

			
			puts "first nills  #{(shop_items_by_index.index{|x| x!=0} )}"
		puts "#{(shop_items_by_index==[0,0,0,0,0])}"
			#if  (shop_items_by_index.index{|x| x!=0} )!= do
				if (shop_items_by_index!=[0,0,0,0,0]) 
						puts "between whiles #{shop_items_by_index}"
					while ((5-(shop_items_by_index.index{|x| x!=0} ))>=x)  do
						
					puts "antes array lote  x #{x}    #{lots_array[1] }"
					puts "lotsarray5-x#{lots_array[5-x]}"
					puts "shop_items_by_index[shop_items_by_index.index{|x| x!=0} ]#{shop_items_by_index[shop_items_by_index.index{|x| x!=0} ]}"
					a=lots_array[5-x]
					b=shop_items_by_index[shop_items_by_index.index{|x| x!=0}]
					lots_array[5-x]=a+b

					puts "array lote  x #{x}    #{lots_array }"
					m +=1
					puts "mmmm #{m}"
					break if m>15 

							lot_counter=0

							shop_items_by_index.map!{|value|
								if value!=0&&lot_counter!=x
									puts "lots-counter #{lot_counter}"
									#puts "value #{value}  lots_array5-x #{lots_array[5-x]}"
									#value-lots_array[5-x]
									puts "value after #{value} #{lots_array[5-x]}"
									lot_counter=lot_counter+1
									value-b
									
								elsif value==0 
									0
								elsif lot_counter==x
										value			
								end

							}

							puts "array lote x #{x}    #{lots_array }"

							puts "array v #{v}    after  #{shop_items_by_index }"
						    break if shop_items_by_index==[0,0,0,0,0]
				    end  #while
			   end #if 0,0,0,0,0
			  #  end #if array 0000

			    
			}   # x reverse

		puts "-------array lote    #{lots_array } +++++ #{shop_items_by_index[4]}"
		mega_lots_array[5-v]=lots_array

		puts "mega_lots_array  #{mega_lots_array}"
		price_array[v-2]=8*(lots_array[0]*0.75*5+lots_array[1]*0.80*4+lots_array[2]*0.90*3+lots_array[3]*0.95*2+shop_items_by_index[4])
		puts price_array[v-2]
	end   # if V-5



	

	}  # v reverse
puts "price_array #{price_array}"
puts price_array.min
	price_array.min




#while shop_items.uniq > 1
#	shop_items
#end
#calculate_discounted_price(shop_items.uniq.length)



end


def take_out_lot(total, lot)

puts "takeout"

end



def calculate_regular_price(amount_of_books)

BOOK_PRICE  * amount_of_books

end


def calculate_discounted_price(amount_of_books)
	
	BOOK_PRICE * DISCOUNT[amount_of_books] * amount_of_books
end
