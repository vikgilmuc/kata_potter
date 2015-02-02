#my_first_kata

	BOOK_PRICE = 8
	DISCOUNT =[0,1, 0.95, 0.90, 0.80, 0.75]

def basket(*num)
	num[1]=num[0] if num[1]==nil
	
	BOOK_PRICE * ( DISCOUNT[num[1]] * (num[1])+  (num[0]-num[1])) 
end
