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

class User_info
      def initialize(name, age)
        @name = name
        @age = age
      end

      def menu(user_info)
        menu = ["Get fit", "Lose Weight"]
            puts "Choose from menu, please write a number"
            menu.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
end      
    

    # def user_info_menu
    #     @user_info_menu = user_info_menu 
    # end
   
    while  user_info == []
        menu_item = gets.chomp.to_i 
        puts "You choose  #{menu[menu_item-1]}"
        order.push(menu[menu_item-1])

    end

 user_info = User_info.new()
 user_info.greeting(user_info)
 
 puts "Welcome to Get track on Diet!"
        puts
        puts "What is your name? "
        user_name = gets.chomp
        puts "What is you goal?"
        puts

# case users

# when 18..30
#     puts " "

# when 31..40
#     puts " "

# when 41..60
#     puts " "
 
# end