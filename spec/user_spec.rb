require_relative '../user.rb'

describe User do
    it "should get the user information" do
        user = User.new("Natacha")
        
        expect(user.name).to eq("Natacha")
        expect(user.gender("Female")).to eq("Female")
    end


    it "gender should be Male, Female Or Non-Binary" do
        user = User.new("Natacha")
    
        expect(user.name).to eq("Natacha")
        expect(user.gender("XXXX")).to eq("")
    end
end