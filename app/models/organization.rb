class Organization < ActiveRecord::Base

    #macro that connects our ruby models to the db
    #An organization will have many superheros and many superpowers through superheroes
    has_many :superheros
    has_many :superpowers, through: :superheros

end