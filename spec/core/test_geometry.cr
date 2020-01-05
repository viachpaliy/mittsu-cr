require "../../src/mittsu"
require "spec"

describe Mittsu::Geometry do
  context "test initialize" do
    it "when initialize s" do
      a = Mittsu::Geometry.new
      a.type.should eq("Geometry")
    end
  end
  

end
