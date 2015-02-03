#my_first_kata

	BOOK_PRICE = 8
	DISCOUNT =[ 1, 1, 0.95, 0.90, 0.80, 0.75 ]

def basket(shop_items)

puts shop_items.length
#puts shop_items.uniq

price = 0

shop_items_by_index=[]

(0..4).each { |i| shop_items_by_index[i]=shop_items.count(i+1)}

shop_items_by_index.sort!










(1..5).each {|v| 
	puts "array #{v}    #{shop_items_by_index }"

	if shop_items_by_index[v-1]!=0
		lot_quantity=shop_items_by_index[v-1]
		price+=calculate_discounted_price(6-v)*lot_quantity
		puts price

		shop_items_by_index.each_with_index{|x,i| 
			puts i
			puts x
			shop_items_by_index[i]=shop_items_by_index[i]-lot_quantity if shop_items_by_index[i]>0
			puts shop_items_by_index[i]}
	end
 }

 price





 
#while shop_items.uniq > 1
#	shop_items
#end
#calculate_discounted_price(shop_items.uniq.length)



end




def calculate_regular_price(amount_of_books)

BOOK_PRICE  * amount_of_books

end


def calculate_discounted_price(amount_of_books)
	
	BOOK_PRICE * DISCOUNT[amount_of_books] * amount_of_books
end
