class CLI

def run
    greet
    intro
    input = ""
    
    while input != "8"
    input = print_menu
    menu_nav(input)
    end
  end
    
def greet
    puts 'Welcome to the Flatiron MBTI & 5 Love Languages CLI App!' 
end


def intro
    puts 'This CLI App takes information from students of Flatiron.'
    puts ""

    puts "The 16 Personality Types are below:"
    
    puts "Campaigner"
    puts "-------------"
    puts "Protagonist"
    puts "-------------"
    puts "Architect"
    puts "-------------"
    puts "Logician"
    puts "-------------"
    puts "Logistician"
    puts "-------------"
    puts "Commander"
    puts "-------------"
    puts "Debater"
    puts "-------------"
    puts "Advocate"
    puts "-------------"
    puts "Mediator"
    puts "-------------"
    puts "Defender"
    puts "-------------"
    puts "Executive"
    puts "-------------"
    puts "Consul"
    puts "-------------"
    puts "Virtuoso"
    puts "-------------"
    puts "Adventurer"
    puts "-------------"
    puts "Entrepreneur"
    puts "-------------"
    puts "Entertainer"
    puts "-------------"

    puts ""
    puts "The 5 lovelanguages are:"
    puts ""
    puts "* Words of Affirmation"
    puts "-" *20
    puts "* Touch"
    puts "-" *20
    puts "* Gifts"
    puts "-" *20
    puts "* Acts of Service"
    puts "-" *20
    puts "* Quality time"
    puts "-" *20
    puts ""
end


def print_menu
    puts ""
    puts "Navigation Menu - choose an option"
    puts ""
    puts (" 1. ") + "The most common personality!"
    puts (" 2. ") + "The least common personality!"
    puts (" 3. ") + "Students who have siblings!"
    puts (" 4. ") + "Students who have no siblings!"
    puts (" 5. ") + "Students who have pets!"
    puts (" 6. ") + "Students who have no pets!"
    puts (" 7. ") + "Majority? Have pets or no pets!"
    puts (" 8. ") + "Exit"
    puts ""
    input = gets.chomp
end



def menu_nav(input)
      case input
        when "1"
            Personality.most_common_personality
        when "2"
            Personality.least_common_personality
        when "3"
            Student.have_siblings
        when "4"
            Student.have_no_siblings
        when "5"
            Student.have_pets_string
        when "6"
            Student.have_no_pets_string
        when "7"
            Student.pets_majority
        when "8"
            puts "Good bye!"
          else
          puts "That option does not exist. Please select a number from 1 - 9 "
      end
end

end