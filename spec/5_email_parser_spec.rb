require 'spec_helper' 

describe "EmailParser" do
  describe '#parser' do
    it "parses CSV emails" do
      emails = "avi@test.com, bob@test.com"
      expect(EmailParser.new(emails).parse).to eq ["avi@test.com", "bob@test.com"]
    end

    it "parses space delimited emails" do
      emails = "avi@test.com bob@test.com"
      expect(EmailParser.new(emails).parse).to eq ["avi@test.com", "bob@test.com"]
    end

    it "parses both CSV and space delimited emails" do
      emails = "avi@test.com, bob@test.com test@avi.com, test@bob.com"
      expect(EmailParser.new(emails).parse).to eq ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
    end

    it 'parses and removes duplicate emails' do
      emails = "avi@test.com, avi@test.com"
      expect(EmailParser.new(emails).parse).to eq ["avi@test.com"]
    end
  end
end
