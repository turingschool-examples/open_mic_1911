class OpenMic
	attr_reader :location, :date, :performers
	
	def initialize(hash)
		@location = hash[:location]
		@date = hash[:date]
		@performers = []
	end

	def welcome(user)
		@performers << user 
	end

	def repeated_jokes?
		jokes = []
		@performers.each do |user|
			user.jokes.each do |joke|
				jokes << joke
			end
		end
		if jokes.count == jokes.uniq.count
			return false
		else
			return true
		end
	require 'pry'; binding.pry
	end
end
