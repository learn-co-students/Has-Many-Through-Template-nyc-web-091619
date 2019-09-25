class Actor
    
  attr_accessor :age
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
      @@all << self
  end

  def self.all
      @@all
  end


  #`Actor#full_name` - returns a string of a given actor's first and last names concatenated (e.g., `"Tom Cruise"`)
  def full_name
      self.first_name + " " + self.last_name
  end

      

  #`Actor#movies` - returns an array of movie object that the actor has acted in
  def get_film
      ar1 = Role.all.select do |role| 
          role.actor == self
          # puts self #used to look at how to the loop works
          # puts role # ""
      end

      ar1.map do |role|
          role.movie
      end
  end


  #`Actor#credits` - returns a hash where the keys are the movie title and the values are the name of the role the actor played in the movie - e.g., 

  def credits
      array_roles = Role.all.select do |role|
          role.actor == self
      end
      movie_title_array = array_roles.map do |role|
          role.movie.title
      end
      character_name_array = array_roles.map do |role|
          role.character_name
      end
      
      Hash[movie_title_array.zip(character_name_array)] 
   end
  

# `Actor.find_by_full_name(full_name)` - accepts `full_name` as a string argument and returns a single instance of `actor` that has that name provided

   def self.find_by_full_name(full_name_given)
      x = Actor.all.select do |actor|
          actor.full_name == full_name_given
      end
      # x[0].age #to get the age
   end


# `Actor.no_younger_than(age)` - accepts an integer `age` argument and returns an array of `actor` instances whose age is equal to or greater than the `age` argument passed in


   def self.no_younger_than(age)
      Actor.all.select do |actor|
          actor.age >= age
      end
  end

#Average age of actors

#     def self.avg_age
#         count_num_actors = Actor.all.count
#         all_age_actors_sum = (Actor.all.map {|actor| actor.age}).sum

#         all_age_actors_sum/count_num_actors
#     end

end #End of Actor class


