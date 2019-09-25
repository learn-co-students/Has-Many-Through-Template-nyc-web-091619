class Actor
    attr_accessor
    attr_reader :first_name, :last_name, :age

    @@all = []

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @@all << self    
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def my_roles
        Role.all.select{|role|role.actor == self}
    end
    
    def movies
        my_roles.map{|role| role.movie}
    end

    def credits
        movie_title_hash = {}
        my_roles.map do |roles| 
            movie_title_hash[roles.movie.title] = 
                roles.character_name
        end
        movie_title_hash
    end

    def Actor.find_by_full_name(fullname)
        self.all.find{|actor|actor.full_name == fullname}
    end

    def Actor.no_younger_than(age)
        self.all.select{|actor|actor.age >= age}
    end

    def self.all
        @@all
    end
end