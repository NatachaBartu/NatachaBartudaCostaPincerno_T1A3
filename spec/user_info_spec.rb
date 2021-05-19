require_relative 'user_info.rb'
# require_relative '../calculate_calories.rb'
# require_relative '../quit_program.rb'


describe User_info do
    it "should get the user information and store" do
        user_gender = female or male
        user_info = User_info.new(gender)
        expect (user_info.gender).to eq(user_gender)
    end
    it "should get the user information and store" do
        user_age = num
        user_info = User_info.new(age)
        expect (user_info.age).to eq(user_age)
    end
end