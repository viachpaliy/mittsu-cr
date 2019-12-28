require "../src/mittsu"
require "spec"

describe Mittsu::Vector2 do
  context "test_initialize" do

    it "when initialize with 2 args" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
    end
 
    it "when initialize with 1 arg" do
      a = Mittsu::Vector2.new(2.1)
      a.x.should eq(2.1)
    end

    it "when initialize without args" do
      a = Mittsu::Vector2.new
      a.x.should eq(0.0)
      a.y.should eq(0.0)
    end

  end 
end
