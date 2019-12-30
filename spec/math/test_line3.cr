require "../../src/mittsu"
require "spec"

describe Mittsu::Line3 do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Line3.new
      a.start_point.x.should eq(0.0)
      a.start_point.y.should eq(0.0)
      a.start_point.z.should eq(0.0)
      a.end_point.x.should eq(0.0)
      a.end_point.y.should eq(0.0)
      a.end_point.z.should eq(0.0)
    end
    it "when initialize with args" do
      a = Mittsu::Line3.new(Mittsu::Vector3.new(1,2,3),Mittsu::Vector3.new(4,5,6))
      a.start_point.x.should eq(1.0)
      a.start_point.y.should eq(2.0)
      a.start_point.z.should eq(3.0)
      a.end_point.x.should eq(4.0)
      a.end_point.y.should eq(5.0)
      a.end_point.z.should eq(6.0)
    end
  end


end
