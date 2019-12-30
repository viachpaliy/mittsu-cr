require "../../src/mittsu"
require "spec"

describe Mittsu::Euler do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Euler.new
      a.x.should eq(0.0)
      a.y.should eq(0.0)
      a.z.should eq(0.0)
      a.order.should eq("XYZ")
    end
    it "when initialize with args" do
      a = Mittsu::Euler.new(1.0,2.0,3.0,"ZYX")
      a.x.should eq(1.0)
      a.y.should eq(2.0)
      a.z.should eq(3.0)
      a.order.should eq("ZYX")
    end
  end


end
