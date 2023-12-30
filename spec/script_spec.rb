require './script'

describe "#caesar_cipher" do
    it "returns an ecrypted string" do
        string = "Hello"
        expect(caesar_cipher(string,5)).to eql("Mjqqt")
    end
end