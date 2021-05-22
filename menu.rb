class Menu
    def items
        ["Get fit", "Lose Weight"]
    end

    def select(item)
        if (item != "1" && item != "2") 
            return ""
        end
        
        @selected = items[item.to_i-1]
        return @selected
    end

    def selected
        @selected
    end

    def options
        ["yes, please!", "no, thank you!"]
    end

    def get_menu
        ["non_vegan_menu", "vegan_menu"]
    end

    def get_fit
        ["yes, to print healthy tips!", "no, thank you!"]
    end

    def healthyTips
        File.open("healthy-tips.txt", "r") do |file|
            puts file.read()
        end
    end

    def nonVeganMenu
        File.open("non_vegan_menu.txt", "r") do |file|
            puts file.read()
        end
    end

    def veganMenu
        File.open("vegan_menu.txt", "r") do |file|
            puts file.read()
        end
    end
end