require_relative '../calories_calculator.rb'


describe Menu do
    it "" do
        user = User.new()
        calculator = CaloriesCalculator.new(user)

        calculator.calculateCalories(38)
        expect(menu.items).to eq(["Get fit", "Lose Weight"])
    end
end