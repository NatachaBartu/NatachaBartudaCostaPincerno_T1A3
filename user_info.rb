#require_relative '../user_info.rb'
# require_relative '../calculate_calories.rb'
# require_relative '../quit_program.rb'

#welcome to app
#get the users information and store in instance to reuse in others files on this code
#ask the user wich goals he want to approach?
#create if statement for options - get fit or lose weight
class User_info
    def greeting(user_info)
        puts "Hello Welcome to Get track on Diet!"
        puts
        puts "Please, write your gender"
        user_gender = gets.chomp
        puts "Please, write your age"
        user_age = gets.chomp.to_i
        puts "Hello your status is #{user_gender}, #{user_age}" 
    end    
 
    def user_info (user_gender, user_age)
        @user_gender = user_gender
        @user_age = user_age
    end
 end

 user_info = User_info.new()
 user_info.greeting(user_info)

case users

when 18..30
    puts " "

when 31..40
    puts " "

when 41..60
    puts " "
 
end