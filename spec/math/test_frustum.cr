require "../../src/mittsu"
require "spec"

describe Mittsu::Frustum do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Frustum.new
      a.planes[0].normal.x.should eq(1.0)
      a.planes[1].normal.y.should eq(0.0)
      a.planes[2].normal.x.should eq(1.0)
      a.planes[3].normal.x.should eq(1.0)
      a.planes[4].normal.z.should eq(0.0)
      a.planes[5].constant.should eq(0.0)
    end
   
  end


end
