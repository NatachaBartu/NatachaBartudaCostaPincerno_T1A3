require_relative 'user.rb'
require_relative 'menu.rb'
require_relative 'calories_calculator.rb'


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

    def initialize()
        @menu = Menu.new
    end

    def welcome
        puts "Welcome to Get track on Diet!"
        puts
    end

    def loadUserData
        puts "What is your name? "
        user_name = gets.chomp
        @user = User.new(user_name)
        puts "What you gender? (Male, Female)"
        user_gender = gets.chomp
        while (@user.setGender(user_gender) == "")
            puts "Ops! Wrong answer try again. (Male, Female)"
            user_gender = gets.chomp
        end
    end

    def menu
        
        puts "What is you goal?"
        puts

        puts "Choose from menu, please write a number"
        @menu.items.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        user_info = []
        menu_item_input = gets.chomp
        while (@menu.select(menu_item_input) == "")
            puts "Ops! Wrong answer try again."
            menu_item_input = gets.chomp
        end
        puts "You choose #{@menu.selected}"
        puts

        @menu.selected
    end

    def store_goal
        puts "Let's create your body profile!"
        puts
        puts "Please write your goal weight"
        @weight = gets.chomp.to_i
        puts 
        puts "Thank you for the information!" 
        puts
    end

    def calculation
        calculator = CaloriesCalculator.new(@user)
        calories = calculator.calculateCalories(@weight)
        puts "To lose weight, your daily calories needs are #{calories}!"
        puts
    end

    def choose_Menu
        puts "Would like some menu ideas?"
        @menu.options.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        answer_menu_input = gets.chomp
        while (answer_menu_input != "1" && answer_menu_input != "2")
            puts "Ops! Wrong answer try again."
            answer_menu_input = gets.chomp
        end

        if answer_menu_input == "1"
            puts ""
            puts "Please, choose one menu:"
            @menu.get_menu.each_with_index do |item, index|
                puts "#{index + 1} - #{item}"
            end


            get_menu_input = gets.chomp
            while (get_menu_input != "1" && get_menu_input != "2")
                puts "Ops! Wrong answer try again."
                get_menu_input = gets.chomp
            end

            if (get_menu_input == "1")
                @menu.nonveganMenu
            else
                @menu.veganMenu
            end
        end
        puts 
    end

    def get_fit
        puts "Would like some tips suggestion?"
        puts
        @menu.get_fit.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        answer_get_fit_input = gets.chomp
        while (answer_get_fit_input != "1" && answer_get_fit_input != "2")
            puts "Ops! Wrong answer try again."
            answer_get_fit_input = gets.chomp
        end

        puts 
        if (answer_get_fit_input == "1")
            @menu.healthyTips
        end
    end

    def thanks
        puts "Thanks for using the app"
    end
end      
    
main = Program.new()
main.welcome
main.loadUserData
if main.menu == "Lose Weight"
    main.store_goal
    main.calculation
    main.choose_Menu
else 
    main.get_fit
end
main.thanks