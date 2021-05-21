require_relative '../calories_calculator.rb'


describe CaloriesCalculator do
    it "calculate the calories need on body daily" do
        user = User.new("Natacha")
        user.setGender("Female")
        calculator = CaloriesCalculator.new(user)

        calories = calculator.calculateCalories(63)

        expect(calories).to eq(1361)
    end
    it "calculate the calories need on body daily" do
        user = User.new("")
        user.setGender("Male")
        calculator = CaloriesCalculator.new(user)

        calories = calculator.calculateCalories(70)

        expect(calories).to eq(1512)
    end
end