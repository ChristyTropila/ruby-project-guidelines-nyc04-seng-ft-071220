require 'pry'

class Interface

    attr_reader :prompt


    def initialize
        @prompt = TTY::Prompt.new
     end

     def welcome
          prompt.select("What would you like to do?") do |menu|
            menu.choice "Create new Superhero Character", -> {superhero_helper}
            menu.choice "View your Superheros", -> {puts choice 2}
          end
     end
    

     #This method ask the user to choose a Superhero that they woud like to acquire
     def superhero_helper
      hero=Superhero.get_superhero_names
      #binding.pry
      user_choice=prompt.select("Choose a Superhero")do |menu|
        menu.choice "1). #{hero.uniq.sample} "
        menu.choice "2). #{hero.uniq.sample} "
        menu.choice "3). #{hero.uniq.sample} "
        menu.choice "4). #{hero.uniq.sample} "
       # binding.pry
            end
        power=choose_superpower
       # binding.pry
       puts "You have chosen #{user_choice} and #{power} power."
          end
      

# helper method to ask user to choose a superpower
    def choose_superpower
      powers=Superpower.get_superpower_names
      user_choice= prompt.select("Choose a Superpower for your Superhero") do |menu|
        menu.choice "1). #{powers.uniq.sample}"
        menu.choice "2). #{powers.uniq.sample}"
        menu.choice "3). #{powers.uniq.sample}"
        menu.choice "4). #{powers.uniq.sample}"
      end
    end
  
  end
