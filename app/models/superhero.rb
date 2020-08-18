require 'pry'

class Superhero < ActiveRecord::Base

    #macro that connects our ruby models to the db
    #a superhero belongs to a superpower and an organization
    belongs_to :superpower
    belongs_to :organization

    has_many :user_superheros
    has_many :users, through: :user_superheros

    

    #CRUD METHODS
    #create a new instance of a superhero
    def self.create_new_hero

    end



   #READ METHODS
   
   #returns the names of all the superheros 
  def self.get_superhero_names
    hero=Superhero.all.map do |heros|
        heros.name
        end
    end



end