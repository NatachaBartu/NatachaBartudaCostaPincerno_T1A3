class Menu
    def items
        ["Get fit", "Lose Weight"]
    end

    def select(item)
        if (item-1 >= items.length) 
            return ""
        end
        
        @selected = items[item-1]
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
        # File.open("non_vegan_menu.txt", "r") do |file|
        #     puts file.read()
    end

    def get_fit
        ["yes, to print healthy tips!", "no, thank you!"]
        if @user == yes 
            File.open("healthy-tips.txt", "r") do |file|
                     puts file.read()
            end
        end
    end
end