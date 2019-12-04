class User

  attr_reader :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

end
