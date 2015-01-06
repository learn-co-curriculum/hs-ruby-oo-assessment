require "spec_helper"

describe "User" do
  let(:carla) { User.new("Carla", "Feb. 12") } 
  let(:george) { User.new("George", "Oct. 23") } 

  it 'is able to instantiate a new user' do
    begin
      expect(carla).to be_a User
    rescue 
      abort "You need to create an initialize method"
    end
  end

  it 'should start with an empty wall and zero pokes' do
    expect(carla.wall).to eq([])
    expect(carla.pokes).to eq(0)
  end

  it 'should have a name and birthday' do
    expect(carla.name).to eq("Carla")
    expect(carla.birthday).to eq("Feb. 12")
  end

  it 'should be able to poke' do
    expect(STDOUT).to receive(:puts).with("Carla poked George")
    carla.poke(george)
    expect(george.pokes).to eq(1)
  end

  it 'should be able to write wall posts' do
    expect(STDOUT).to receive(:puts).with("George says: Hey! Stop poking me.")
    george.wall_post("Hey! Stop poking me.", carla)
    expect(carla.wall.count).to eq(1)
  end
end