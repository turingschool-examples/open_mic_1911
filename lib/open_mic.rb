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
		jokes = @performs.
