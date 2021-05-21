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
end