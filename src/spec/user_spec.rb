require_relative '../user.rb'

describe User do
    it "should get the user information" do
        user = User.new("Natacha")
        
        expect(user.name).to eq("Natacha")
        expect(user.setGender("Female")).to eq("Female")
    end


    it "gender should be Male or Female" do
        user = User.new("Natacha")
    
        expect(user.name).to eq("Natacha")
        expect(user.setGender("XXXX")).to eq("")
    end
end