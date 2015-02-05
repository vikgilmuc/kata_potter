#my_first_kata

	BOOK_PRICE = 8
	DISCOUNT =[ 1, 1, 0.95, 0.90, 0.80, 0.75 ]

def basket(shop_items)


price = 0   # 
price_array=[]   
shop_items_by_index_original=[]
mega_lots_array=[0,0,0,0]   #array of different combinations of discounts, beginning from lots of 5 to lots of 2 

(0..4).each { |i| shop_items_by_index_original[i]=shop_items.count(i+1)}  # transform array of items to array of quantities


shop_items_by_index_original.sort!.reverse!   # example [5,3,3,3,2] 5 of book x, 3 of book y, 


(2..5).reverse_each {|v|       #   calculate lots beginning from 5 to 2      
	
	shop_items_by_index= shop_items_by_index_original.dup 
	
	lots_array=[0,0,0,0]       # array of 5,4,3,2  lots 
	
	if shop_items_by_index[v-1]!=0 


		(2..v).reverse_each{|x| 

						
					while (shop_items_by_index[x-1]>0) 
						
						lots_array[5-x]+=1
						take_out_a_lot(shop_items_by_index,x)
						shop_items_by_index.sort!.reverse!
													
				    end  #while		 
			    
			}   # x reverse

		
			mega_lots_array[5-v]=lots_array

		
			# exceptional fall :  lots of 5 and 3 without lots of  4 = 2 x lots of 4
		if (mega_lots_array[0][0]!=0)&&(mega_lots_array[0][2]!=0)&&(mega_lots_array[0][1]==0)

			excep4lot=[mega_lots_array[0][0],mega_lots_array[0][2]].min
			#puts excep4lot
			mega_lots_array[0][1]+=(excep4lot)*2
			mega_lots_array[0][0]-=excep4lot
			mega_lots_array[0][2]-=excep4lot


		end

		
		price_array[v-2]=(lots_array.each.with_index.inject(0){|sum,(val,index)| sum+calculate_discounted_price(5-index)*val} )+calculate_regular_price(shop_items_by_index[0])
		
		puts price_array[v-2]
	


	end   # if V-1

	

}  # v reverse

	price_array.push((shop_items.length)*8)   # last element of price array without discounts						
	price_array.min

end


def take_out_a_lot (shop_items_by_index_fun, x)


			lot_counter=0

				shop_items_by_index_fun.map!{|value|
					if lot_counter<x
					
						lot_counter+=1
						value-1
					
					elsif lot_counter==x
							value			
					end

				}

		
end


def calculate_regular_price(amount_of_books)

	BOOK_PRICE  * amount_of_books

end


def calculate_discounted_price(amount_of_books)
	
	BOOK_PRICE * DISCOUNT[amount_of_books] * amount_of_books
end
