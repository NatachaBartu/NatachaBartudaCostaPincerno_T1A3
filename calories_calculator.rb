require_relative 'user.rb'
# **calculate_calories.rb**

# 1. calculate accordingly with the user information the calories
# 2. create a 3 possibles situation to score classification this calories position (light - moderate -heavy) - position this step as case statement
# 3. and input his/her "score" using colorize or gems
#*************************************************************************************************************

# How to calculate your daily calorie needs
# Step 1: Find your body weight in kilograms.

# Step 2: Multiply your weight in kilograms by 0.9 if you are a woman or 1.0 if you are a man.

# Step 3: Multiply by 24

#This number is called your Basal Metabolic Rate (BMR).
#Example using my stats: 61 kg (134.5 lbs.) x 0.9 (female) x 24 x 0.95 (20% body fat) = 1252

class CaloriesCalculator
    def initialize(user)
        @user = user
    end
        
    def calculateCalories (weight)
        if @user.gender == "Female"
           calories = weight * 0.90 * 24 * 1.0
        else  
            calories = weight * 1.0 * 24 * 0.9
        end
        return calories.round
    end
end