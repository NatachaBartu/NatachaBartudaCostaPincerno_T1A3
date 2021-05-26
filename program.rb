require_relative 'user.rb'
require_relative 'menu.rb'
require_relative 'calories_calculator.rb'
require 'colorize'

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
            File.open("ascii_art", "r") do |file|
                puts file.read()
            end
    end

    def loadUserData
        puts 
        puts "What is your name? ".colorize(:light_blue)
        user_name = gets.chomp
        @user = User.new(user_name)
        puts
        puts "What your gender? (Male, Female)".colorize(:light_blue)
        user_gender = gets.chomp
        while (@user.setGender(user_gender) == "")
            puts "Ops! Wrong answer try again. (Male, Female)".colorize(:red)
            user_gender = gets.chomp
        end
    end

    def menu
        
        puts "What is you goal?".colorize(:light_blue)
        puts

        puts "Choose from menu, please write a number".colorize(:light_blue)
        @menu.items.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        user_info = []
        menu_item_input = gets.chomp
        while (@menu.select(menu_item_input) == "")
            puts "Ops! Wrong answer try again.".colorize(:red)
            menu_item_input = gets.chomp
        end
        puts "You choose #{@menu.selected}".colorize(:light_blue)
        puts

        @menu.selected
    end

    def store_goal
        puts "Let's create your body profile!".colorize(:light_blue)
        puts
        puts "Please write your goal weight".colorize(:light_blue)
        @weight = gets.chomp.to_i
        puts 
        puts "Thank you for the information!".colorize(:light_blue) 
        puts
    end

    def calculation
        calculator = CaloriesCalculator.new(@user)
        calories = calculator.calculateCalories(@weight)
        puts "To lose weight, your daily calories needs are #{calories}!".colorize(:red)
        puts
    end

    def choose_Menu
        puts "Would like some menu ideas?".colorize(:light_blue) 
        @menu.options.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        answer_menu_input = gets.chomp
        while (answer_menu_input != "1" && answer_menu_input != "2")
            puts "Ops! Wrong answer try again.".colorize(:light_blue) 
            answer_menu_input = gets.chomp
        end

        if answer_menu_input == "1"
            puts ""
            puts "Please, choose one menu:".colorize(:light_blue) 
            @menu.get_menu.each_with_index do |item, index|
                puts "#{index + 1} - #{item}"
            end


            get_menu_input = gets.chomp
            while (get_menu_input != "1" && get_menu_input != "2")
                puts "Ops! Wrong answer try again.".colorize(:red)
                get_menu_input = gets.chomp
            end

            if (get_menu_input == "1")
                @menu.nonVeganMenu
            else
                @menu.veganMenu
            end
        end
        puts 
    end

    def get_fit
        puts "Would like some tips suggestion?".colorize(:light_blue) 
        puts
        @menu.get_fit.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        answer_get_fit_input = gets.chomp
        while (answer_get_fit_input != "1" && answer_get_fit_input != "2")
            puts "Ops! Wrong answer try again.".colorize(:red) 
            answer_get_fit_input = gets.chomp
        end

        puts 
        if (answer_get_fit_input == "1")
            @menu.healthyTips
        end
    end

    def thanks
        puts "Thanks for using the app".colorize(:light_blue) 
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