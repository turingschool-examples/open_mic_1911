class OpenMic
  attr_reader :char_params, :performers

  def initialize(char_params)
    @location = char_params[:location]
    @date = char_params[:date]
    @performers = []
  end

  def location
    @location
  end

  def date
    @date
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    per_jokes = []
    @performers.each do |performer|
        per_jokes << performer.jokes
    end
    per_jokes.any? do |same_joke|
      same_joke ==  same_joke
    end
  end

end


# pry(main)> joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# # => #<Joke:0x00007fe8fd892978...>
#
# pry(main)> joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
# # => #<Joke:0x00007fe8fe19f250...>
#
# pry(main)> ali.learn(joke_1)
#
# pry(main)> ali.learn(joke_2)
#
# pry(main)> open_mic.repeated_jokes?
# # => false
#
# pry(main)> sal.learn(joke_1)
#
# pry(main)> open_mic.repeated_jokes?
# # => true
# ```
