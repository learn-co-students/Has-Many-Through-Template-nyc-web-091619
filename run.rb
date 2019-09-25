require_relative "lib/actor.rb"
require_relative "lib/role.rb"
require_relative "lib/movie.rb"
require 'pry'


# actor initialize first_name, last_name, age)
keanu = Actor.new("Keanu", "Reeves", 50)
cruise = Actor.new("Tom", "Cruise", 57)
rock = Actor.new("Dwayne", "Johnson", 45)
theon = Actor.new("Theon", "Greyjoy", 39)


# Movie initialize (title, date)
matrix = Movie.new("The Matrix", 1999)
mission_impossible = Movie.new("Mission Impossible", 1996)
hobbs_and_shaw = Movie.new("Hobbs and Shaw", 2019)
john_wick = Movie.new("John Wick", 2019)

#roles (actor, movie, character_name)
neo = Role.new(keanu, matrix, "Neo")
john = Role.new(keanu, john_wick, "John Wick")
bad_son = Role.new(theon, john_wick, "Theon Greyjoy")
#Actor methods
keanu.full_name
keanu.movies
keanu.credits

#Movie methods
john_wick.pretty_print
john_wick.cast
john_wick.credits

Actor.find_by_full_name("Keanu Reeves")
Actor.no_younger_than(40)
p Movie.by_year(2019)
#binding.pry