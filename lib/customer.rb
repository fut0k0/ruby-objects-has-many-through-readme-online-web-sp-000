class Customer
	attr_accessor :name, :age

	@@all = []

	def self.all
		@@all
	end

	def initialize(name, age)
		@name = name
		@age = age
		@@all.push(self)
	end

	def new_meal(waiter, total, tip=0)
		Meal.new(waiter, self, total, tip)
	end

	def meals
		Meal.all.filter{|meal| meal.customer == self}
	end

	def waiters
		meals.map{|meal| meal.waiter}
	end
end