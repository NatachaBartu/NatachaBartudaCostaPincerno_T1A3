require_relative '../menu.rb'

describe Menu do
    it "menu options should be 'Get Fit' and 'Lose Weight'" do
        menu = Menu.new()

        expect(menu.items).to eq(["Get fit", "Lose Weight"])
    end

    it "option 1 should be 'Get Fit'" do
        menu = Menu.new()

        expect(menu.select("1")).to eq('Get fit')
    end

    it "option 4 should be empty" do
        menu = Menu.new()

        expect(menu.select("4")).to eq('')
    end
    it "write a number to select option on menu" do
        menu = Menu.new()

        expect(menu.options).to eq(["yes, please!", "no, thank you!"])
    end
    it "write a number to select option on menu" do
        menu = Menu.new()

        expect(menu.get_menu).to eq(["non_vegan_menu", "vegan_menu"])
    end
    it "write a number to select option on menu" do
        menu = Menu.new()

        expect(menu.get_fit).to eq(["yes, to print healthy tips!", "no, thank you!"])
    end
end