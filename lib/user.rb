class User
attr_reader :name
attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    #learn a joke
  end



end
