require_relative '../calories_calculator.rb'


describe Menu do
    it "calculate the calories need on body daily" do
        user = User.new("Natacha")
        user.gender("Female")
        calculator = CaloriesCalculator.new(user)

        calories = calculator.calculateCalories(63)

        expect(calories).to eq(1361)
    end
end