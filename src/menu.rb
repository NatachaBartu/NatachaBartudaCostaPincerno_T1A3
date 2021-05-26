require 'tty-pager'

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

    def print(file)
        begin
            pager = TTY::Pager.new
          
            File.open(file, "r").each_line do |line|
              # do some work with the line
          
              pager.write(line) # send it to the pager
            end
          rescue TTY::Pager::PagerClosed
            # the user closed the paginating tool
          ensure
            pager.close
          end
        end

    def healthyTips
        print "healthy-tips.txt"
    end

    def nonVeganMenu
        print "non_vegan_menu.txt"
    end

    def veganMenu
        print "vegan_menu.txt"
    end

end