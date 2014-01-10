 require 'pry'

food = {"pizza" => "cheese, gluten, tomatoes",
"pan_seared_scallops" => "scallops, lemons ,pasta ,olive oil",
"water" => "h, h, o"}

class AllergyError < SyntaxError; end

class Person

	attr_accessor :stomach, :allergy, :food

	def initialize(stomach=[], allergies)
		@stomach = stomach
		@allergies = allergies
		@food = food
	end

	def run
		@food = @stomach
		food_i = @food
		food_in_stom = food_i.values.join
		begin
			if food_in_stom.include?(@allergies)
				raise AllergyError.new("YOU ATE #{@allergies}! YOU'RE ALLERGIC")
			else
				puts "No Allergies!"

			end
			rescue AllergyError => error
				puts "#{e}"
		end
	end 
end


begin
chris = Person.new(food, "gluten")
chris.run
rescue AllergyError => error
puts "#{error}"
end