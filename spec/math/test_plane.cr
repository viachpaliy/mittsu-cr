require "../../src/mittsu"
require "spec"

describe Mittsu::Plane do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Plane.new
      a.normal.x.should eq(1.0)
      a.normal.y.should eq(0.0)
      a.normal.z.should eq(0.0)
      a.constant.should eq(0.0)
    end
    it "when initialize with args" do
      n = Mittsu::Vector3.new(0,1,0)
      c = 2
      a = Mittsu::Plane.new(n,c)
      a.normal.x.should eq(0.0)
      a.normal.y.should eq(1.0)
      a.normal.z.should eq(0.0)
      a.constant.should eq(2.0)     
    end
  end


end
