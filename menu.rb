class Menu 
    def items
        ["Get fit", "Lose Weight"]
    end

    def select(item)
        if (item-1 >= items.length) 
            return ""
        end
        return items[item-1]
    end
end