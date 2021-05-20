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
# 6. classified the information as instance variable ( for use info later)
# 7. use the information on case statement or if statement.

class Program

    def Welcome
        puts "Welcome to Get track on Diet!"
        puts
    end

    def LoadUserData
        puts "What is your name? "
        @user_name = gets.chomp
        puts "what you gender? (Male, Female, Non-Binary)"
        @user_gender = gets.chomp
        while (@user_gender != "Male" && @user_gender != "Female" && @user_gender != "Non-Binary")
            puts "Ops! Wrong answer try again. (Male, Female, Non-Binary)"
            @user_gender = gets.chomp
        end
        puts "What is you goal?"
        puts
    end

    def Menu
        menu = ["Get fit", "Lose Weight"]
        puts "Choose from menu, please write a number"
        menu.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        user_info = []
        menu_item_input = gets.chomp
        while (menu_item_input != "1" && @menu_item_input != "2")
            puts "Ops! Wrong answer try again."
            menu_item_input = gets.chomp
        end
        menu_item = menu_item_input.to_i
        puts "You choose  #{menu[menu_item-1]}"
        order.push(menu[menu_item-1])
    end
    
    # def GetUserMenu



    # end
end      
    
main = Program.new()
main.Welcome
main.LoadUserData
main.Menu
main.GetUserMenu
#     #main.calculateSoemthing
#     #main.printReceipt
# main.quit 