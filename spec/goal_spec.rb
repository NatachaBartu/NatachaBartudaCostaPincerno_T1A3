require_relative '../goal.rb'
# **goal**
# 
# 1. puts type user information as weight and age and store info
# 2. use case statement or if statement
# 3. if user just go to input  "get fit",  print tips.

describe Goal do
    it "if goal is 'Lose Weight' it should ask weight and age from the user" do
        goal = Goal.new()

        expect(goal).to eq(["Lose Weight"])
    end

    # it "should be weight and age"
    #     goal = Goal.new(weight, age)
    #     expect(goal.weight).to eq("w")
    #     expect(goal(weight)).to eq("to_i")
    # end
    #     it "should be weight and age"
    #     goal = Goal.new(weight, age)
    #     expect(goal.age).to eq("a")
    #     expect(goal(age)).to eq("to_i")
    # end

end
