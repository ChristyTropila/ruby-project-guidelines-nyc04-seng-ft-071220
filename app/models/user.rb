class User < ActiveRecord::Base 
    has_many :user_superheros
    has_many :superheros, through: :user_superheros



    #this method will add a superhero object into a user array
    def add_superhero_to_users_list(superhero)
        self.superheros << superhero
        superhero.users << self

    end

end