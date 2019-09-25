class Movie

    attr_accessor :title, :year
  
    @@all = []
  
    def initialize(title, year)
        @title = title
        @year = year
        @@all << self
    end
  
    def self.all
        @@all
    end
  
    #`Movie#pretty_print` - returns a string with the `title` and the `date` concatenated with a colone (`:`) character seperating them (e.g., `The Matrix 4: 2021`)
    def pretty_print
        self.title + ": " + self.year.to_s #converts integer into string with 'to_s' line
    end
  
    # `Movie#cast` - returns an array of `actor` objects that have a role in the movie
    def cast
  
        role_movies = Role.all.select do |role|
            role.movie == self
        end
        
        role_movies.map do |role| #still iterating through role
            role.actor
        end
    end
  
  
    # `Movie.by_year(year)` - accepts an interger `year` argument and returns an array of movie objects from that year
    def self.by_year(year)
        self.all.select do |movie|
            movie.year == year
        end
    end
  
  
    # `Movie#credits` - returns a hash where the keys are the character names of the `role`s in the movies and the values are the corresponding `actor` full names - e.g.
    def credits
       array_roles = Role.all.select do |role|
        role.movie == self
       end
       role_character_name = array_roles.map do |role|
        role.character_name
       end
       role_actor = array_roles.map do |role|
        # role.actors.first_name + " " + role.actors.last_name #OR
        role.actor.full_name #this can be used because method for FN+LN has been created to full_name
       end
       
       Hash[role_character_name.zip(role_actor)] 
    end
  
    #Need Role.all b/c has attributes of actor, movie, character_names
    #Select role(s) corresponding to THIS movie [self] - instance method/self |role| role.movie
    #From role instance I selected, aka array_roles, I map out and display array of character_name and actor for all the instances in array_roles
  
  
  end
  
  