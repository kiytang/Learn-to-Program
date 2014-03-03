# Make an OrangeTree class. It should have a height method which returns its height, and a
# oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows
# taller (maximum height is 10m), and after 50 years the tree should die. 

# For the first few years, it
# should not produce fruit, but after a while it should, and older trees produce more each year than
# younger trees. And, of course, you should be able to countTheOranges (which returns the
# number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one
# and returns a string telling you how delicious the orange was, or else it just tells you that there are no
# more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before
# the next year. Your program should behaves like this:

class OrangeTree
	def initialize
		@age 					= 0
		@height 			= 0
		@orange_count = 0
		@alive				= true
		puts "A new orange tree has been planted"
	end

	def height
		if @alive
			@height
		else
			"A dead tree is not very tall"
		end
	end

	def count_the_oranges
		if @alive
			@orange_count
		else
			'A dead has no oranges'
		end
	end

	def one_year_passes
		if @alive
			@age = @age + 1
			@height = @height + 0.4
			@orange_count = 0 #old oranges fall off
		 
		 if @height > 10 && rand(2) > 0
		 	# tree dies
		 	@alive = false
		 	'Oh, no! The tree is too old, and has died.'
		 elsif @height > 2
		 	# new oranges grow			 	
		 end

		end
	end





















end

# orange_tree = OrangeTree.new #creates 0 years old tree
# orange_tree.oneYearPasses
# puts orange_tree #produces “Orange tree – age: 1 year, hight: 0.5 m”
# orange_tree.pickAnOrange #produces “there are no more oranges to pick this year”
# 7.times {orange_tree.oneYearPasses}
# orange_tree.pickAnOrange #produces “orange is delicious”
# orange_tree.countTheOranges #produces “there are 24 oranges on the tree”
# orange_tree.pickAnOrange #produces “orange is delicious”
# orange_tree.countTheOranges #produces “there are 23 oranges on the tree”
# 55.times {orange_tree.oneYearPasses}
# puts orange_tree #produces “Orange tree - the tree is died”
