class Role

  attr_accessor :actor, :movie, :character_name
  
  @@all = []

  def initialize(actor, movie, character_name)
      @actor = actor
      @movie = movie
      @character_name = character_name
      @@all << self
  end

  def self.all
      @@all
  end

  #`Role#movie` - returns the `movie` object the `role` belongs to
  def get_movie_obect
      self.movie
  end

  def character_name_title
      self.character_name
  end


  def actor_name
      self.actor
  end

end