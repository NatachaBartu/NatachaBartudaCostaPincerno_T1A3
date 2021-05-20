class User
    def initialize (name)
        @name = name
    end

    def name
        @name
    end

    def gender(value)
        if (value != "Female" && value != "Male" && value != "Non-Binary")
            @gender = ""
        else
            @gender = value
        end
        return @gender
    end
end