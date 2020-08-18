class Superpower < ActiveRecord::Base

    #macro that connects our ruby models to the db
    #A superpower can belong to many superheroes
    #and will be long to many organizations through superherofes
    has_many :superheros
    has_many :organizations, through: :superheros





     def self.get_superpower_names
            power=Superpower.all.map do |powers|
                powers.name
            end
        end

end


