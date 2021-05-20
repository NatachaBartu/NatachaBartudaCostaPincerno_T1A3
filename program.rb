#require_relative '../user_info.rb'
# require_relative '../calculate_calories.rb'
# require_relative '../quit_program.rb'

#***********************************************************************
# **user_info**

# 1. welcome message
# 2. ask name from users and store the information
# 3. ask user "what is your goal" and give a 2 suggestion (get fit or lose weight)
# 4. define this information as a number and he/she can choose as a number ( 1. get fit or 2 . lose weight )
# 5. use the information to redirect user.
# 6. classified the information as global variable instances ( use info later)
# 7. use the information on case statement or if statement.

class Program

    def Welcome
        puts "Welcome to Get track on Diet!"
        puts
    end

    def LoadUserData
        puts "What is your name? "
        @user_name = gets.chomp
        puts "What is you goal?"
        puts
    end

    def Menu
        menu = ["Get fit", "Lose Weight"]
        puts "Choose from menu, please write a number"
        menu.each_with_index do |item, index|
        puts "#{index + 1} - #{item}"
        end
    end     
end      
    
main = Program.new()
main.Welcome
main.LoadUserData
main.Menu
#     #main.getUserMenu
#     #main.calculateSoemthing
#     #main.printReceipt
# main.quit 