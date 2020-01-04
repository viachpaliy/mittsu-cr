require "../../src/mittsu"
require "spec"

describe Mittsu::Face3 do
  context "test initialize" do
    it "when initialize with 3 args" do
      a = Mittsu::Vector3.new(1.0,2.0,3.0)
      b = Mittsu::Vector3.new(4.0,5.0,6.0)
      c = Mittsu::Vector3.new(7.0,8.0,9.0)
      f = Mittsu::Face3.new(a,b,c)
      f.a.x.should eq(1.0)
      f.b.y.should eq(5.0)
      f.c.z.should eq(9.0)
      f.normal.should be_a(Mittsu::Vector3)
      f.vertex_normals.should be_a(Array(Mittsu::Vector3)) 
    end
  end
  

end
