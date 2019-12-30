require "../../src/mittsu"
require "spec"

describe Mittsu::Ray do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Ray.new
      a.origin.x.should eq(0.0)
      a.origin.y.should eq(0.0)
      a.origin.z.should eq(0.0)
      a.direction.x.should eq(0.0)
      a.direction.y.should eq(0.0)
      a.direction.z.should eq(0.0)
    end
    it "when initialize with args" do
      a = Mittsu::Ray.new(Mittsu::Vector3.new(1,2,3),Mittsu::Vector3.new(4,5,6))
      a.origin.x.should eq(1.0)
      a.origin.y.should eq(2.0)
      a.origin.z.should eq(3.0)
      a.direction.x.should eq(4.0)
      a.direction.y.should eq(5.0)
      a.direction.z.should eq(6.0)
    end
  end


end
