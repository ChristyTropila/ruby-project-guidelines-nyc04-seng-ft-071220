require 'pry'

class Interface

    attr_reader :prompt

    @user


    def initialize
        @prompt = TTY::Prompt.new
     end

     def welcome
          prompt.select("What would you like to do?") do |menu|
            menu.choice "Create new Superhero Character", -> {superhero_helper}
            menu.choice "View your Superheros", -> {see_all_superheros}
          end
     end
    

     #This method ask the user to choose a Superhero that they woud like to acquire
     def superhero_helper
      
      hero=Superhero.get_superhero_names
      #binding.pry
      user_choice=prompt.select("Choose a Superhero")do |menu|
        menu.choice "#{ hero.uniq.sample}"
        menu.choice "#{ hero.uniq.sample}"
        menu.choice "#{ hero.uniq.sample}"
        menu.choice  "#{ hero.uniq.sample}"
       # binding.pry
            end
        power=choose_superpower
        user=User.new
        user.add_superhero_to_users_list(hero)
         
       puts "You have chosen #{user_choice} and #{power} power."
          end
      

# helper method to ask user to choose a superpower
    def choose_superpower
      powers=Superpower.get_superpower_names
      user_choice= prompt.select("Choose a Superpower for your Superhero") do |menu|
        menu.choice " #{powers.uniq.sample}"
        menu.choice "#{powers.uniq.sample}"
        menu.choice "#{powers.uniq.sample}"
        menu.choice  "#{powers.uniq.sample}"
      end
    end


  #helper method to see all superheros that user has created

     def create_new_user
      new_user=User.new
      new_user
     end

  
  end
