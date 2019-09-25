class Role
    attr_accessor :actor, :movie, :character_name
    attr_reader

    @@all = []

    def initialize(actor, movie, 
            character_name)
        @actor = actor
        @movie = movie
        @character_name = character_name
        @@all << self    
    end


    def self.all
        @@all
    end
end