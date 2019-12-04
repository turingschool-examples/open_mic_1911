# Creates a user that can take in and say jokes
#     User has a name and uses an array to store jokes

class User
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

end