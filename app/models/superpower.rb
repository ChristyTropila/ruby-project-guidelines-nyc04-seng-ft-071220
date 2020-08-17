class Superpower < ActiveRecord::Base

    #macro that connects our ruby models to the db
    #A superpower can belong to many superheroes
    #and will be long to many organizations through superherofes
    has_many :superheros
    has_many :organizations, through: :superheros

end



# wind=Superpower.new(name: "WindBlaster", description: "Spins enemies to death")
# fire=Superpower.new(name: "Firewave", description: "Melts enemies in seconds")

# windy=Superhero.new(name: "WindyB")
# heat=Superhero.new(name: "HeatB")