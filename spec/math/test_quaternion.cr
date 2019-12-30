require "spec"
require "../../src/mittsu"

describe Mittsu::Quaternion do
  context "test_initialize" do

    it "when initialize with 4 args" do
      a = Mittsu::Quaternion.new(1.5, 2.3, 3.4, 5.6)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
      a.z.should eq(3.4)
      a.w.should eq(5.6)
    end

    it "when initialize with 3 args" do
      a = Mittsu::Quaternion.new(1.5, 2.3, 3.4)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
      a.z.should eq(3.4)
      a.w.should eq(1.0)
    end

    it "when initialize with 2 args" do
      a = Mittsu::Quaternion.new(1.5, 2.3)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
      a.z.should eq(0.0)
      a.w.should eq(1.0)
    end
 
    it "when initialize with 1 arg" do
      a = Mittsu::Quaternion.new(2.1)
      a.x.should eq(2.1)
      a.y.should eq(0.0)
      a.z.should eq(0.0)
      a.w.should eq(1.0)
    end

    it "when initialize without args" do
      a = Mittsu::Quaternion.new
      a.x.should eq(0.0)
      a.y.should eq(0.0)
      a.z.should eq(0.0)
      a.w.should eq(1.0)
    end

  end 
end
