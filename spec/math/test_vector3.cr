require "../../src/mittsu"
require "spec"

describe Mittsu::Vector3 do
  context "test_initialize" do

    it "when initialize with 3 args" do
      a = Mittsu::Vector3.new(1.5, 2.3, 3.4)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
      a.z.should eq(3.4)
    end

    it "when initialize with 2 args" do
      a = Mittsu::Vector3.new(1.5, 2.3)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
      a.z.should eq(0.0)
    end
 
    it "when initialize with 1 arg" do
      a = Mittsu::Vector3.new(2.1)
      a.x.should eq(2.1)
      a.y.should eq(0.0)
      a.z.should eq(0.0)
    end

    it "when initialize without args" do
      a = Mittsu::Vector3.new
      a.x.should eq(0.0)
      a.y.should eq(0.0)
      a.z.should eq(0.0)
    end

  end 
end
