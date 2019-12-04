class OpenMic
  attr_reader :location, :date, :performers

  def initialize(open_mic_info)
    @location = open_mic_info[:location]
    @date = open_mic_info[:date]
    @performers = []
  end

  def welcome(performer_name)
    @performers.push(performer_name)
  end

  def repeated_jokes?
    # check if the jokes the performers have match
    # any jokes that exist in the open mic
    
    # create array of all jokes said in open mic
    #   check that array against incoming jokes from other artists
    #   return false if there are no duplicates (.uniq ?, find_all ?, any?)
    #   return true if there is duplicates in the joke array.
    performed_jokes = @performers.map do |performer|
      performer.jokes
    end

    if performed_jokes.uniq.length == performed_jokes.length
      return false
    else
      return true
    end
  end

end