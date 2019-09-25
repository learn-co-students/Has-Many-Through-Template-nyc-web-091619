require 'pry'

require_relative 'actor.rb'
require_relative 'movie.rb'
require_relative 'role.rb'


a1 = Actor.new("Tom", "Cruise", 55)
a2 = Actor.new("Brad", "Pitt", 45)
a3 = Actor.new("Jennifer", "Aniston", 47)


m1 = Movie.new("Top Gun", 1992)
m2 = Movie.new("Mr. & Mrs. Smith", 2005)
m3 = Movie.new("Godzilla", 1989)


r1 = Role.new(a1, m1, "Rob")
r2 = Role.new(a2, m2, "Kevin")
r3 = Role.new(a3, m3, "Rachel")
r4 = Role.new(a1, m3, "Derek")






binding.pry
0