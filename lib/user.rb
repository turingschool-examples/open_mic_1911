class User
	attr_reader :name, :jokes
	
	def initialize(name)
		@name = name
		@jokes = []
	end

	def learn(joke)
		@jokes << joke
	end
	
	def joke_by_id(desired_id)
		correct_joke = @jokes.select { |joke| joke.id == desired_id}
	end
	def tell(learner, joke)
		learner.jokes << joke
	end

end


		
