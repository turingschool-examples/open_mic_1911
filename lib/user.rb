require 'pry'


class User

def initialize(name)
  @name = name
  @jokes = []
end

def learn(joke)
  @jokes << joke 
end

end
