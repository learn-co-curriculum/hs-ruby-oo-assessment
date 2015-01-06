require 'spec_helper' 

describe "Integer" do
  describe "#is_between?" do
    it "returns true if the number is between the two numbers" do
      expect(15.is_between?(12, 18)).to eq(true)
    end

    it "returns false if the number is not between the two numbers" do
      expect(15.is_between?(2, 8)).to eq(false)
    end
  end
end