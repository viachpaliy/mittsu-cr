require "../../src/mittsu"
require "spec"

describe Mittsu::Sphere do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Sphere.new
      a.center.x.should eq(0.0)
      a.center.y.should eq(0.0)
      a.center.z.should eq(0.0)
      a.radius.should eq(0.0)
    end
    it "when initialize with args" do
      a = Mittsu::Sphere.new(Mittsu::Vector3.new(1,2,3),4)
      a.center.x.should eq(1.0)
      a.center.y.should eq(2.0)
      a.center.z.should eq(3.0)
      a.radius.should eq(4.0)
  end
  end


end
