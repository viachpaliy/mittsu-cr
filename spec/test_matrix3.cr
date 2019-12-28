require "../src/mittsu"
require "spec"

describe Mittsu::Matrix3 do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Matrix3.new
      a.elements[0].should  eq(1.0) 
      a.elements[1].should  eq(0.0)
      a.elements[2].should  eq(0.0) 
      a.elements[3].should  eq(0.0)
      a.elements[4].should  eq(1.0)
      a.elements[5].should  eq(0.0)
      a.elements[6].should  eq(0.0)
      a.elements[7].should  eq(0.0)
      a.elements[8].should  eq(1.0) 
      a.determinant.should  eq(1.0)
    end
  end 
end
