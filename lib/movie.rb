class Movie
    attr_accessor :title, :date
    attr_reader 

    @@all = []

    def initialize(title, date)
        @title = title
        @date = date
        @@all << self    
    end

    def pretty_print
        "#{title}: #{date}"
    end

    def my_roles
        Role.all.select{|role| role.movie == self}
    end

    def cast
        my_roles.map{|role| role.actor}
    end

    def credits
        role_name_hash = {}
        my_roles.map do |roles| 
            role_name_hash[roles.character_name] = 
                roles.actor.full_name
        end
        role_name_hash
    end

    def Movie.by_year(year)
        self.all.select{|movie| movie.date == year}
    end

    def self.all
        @@all
    end
end