require "spec_helper"

describe "Dog" do
  let(:fido) {Dog.new("Beagle","Snoopy")}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'is able to instantiate a new dog' do
    expect(fido).to be_a Dog
  end

  it 'should have a name' do
    fido.name = "Fido"
    expect(fido.name).to eq("Fido")
  end

  it "should be able to bark its name" do
    fido.name = "Fido"

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    expect(STDOUT).to receive(:puts).with("Fido woof!")
    fido.bark
  end

  it "should get happier after an ear scratch" do
    fido.ear_scratch
    expect(fido.happiness).to eq(1)
  end

  it "should wag its tail when it is happy" do
    fido.name = "Fido"
    fido.ear_scratch
    fido.ear_scratch
    fido.ear_scratch
    fido.ear_scratch
    expect(STDOUT).to receive(:puts).with("Fido wags his tail!")
    fido.tail_wag
  end
end