class cart
	def initialize 
		@total = 0
	end
	def add (typeFruit, quantity)
		if typeFruit == 'apple'
			@total = @total + quantity * 10
		elsif typeFruit == 'orange'
			@total = @total + quantity * 5
		elsif typeFruit == 'grapes'
			@total = @total + quantity * 15
		elsif typeFruit == 'banana'
			@total = @total + quantity * 20
		elsif typeFruit == 'watermelon'
			@total = @total + quantity * 50
		else
			puts "Insert a valid fruit"
		end
	end
	def totalCart
		puts "Total spend is: #{@total} €"
	end
end

myCart = cart.new
myCart.add("apple", 2)
myCart.totalCart
