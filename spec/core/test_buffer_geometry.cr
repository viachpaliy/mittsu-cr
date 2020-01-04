require "../../src/mittsu"
require "spec"

describe Mittsu::BufferGeometry do
  context "test BufferGeometry" do
    it "initialize and test id" do
      a = Mittsu::BufferGeometry.new
      b = Mittsu::BufferGeometry.new
      b.id.should eq(a.id + 1)
    end
    it "initialize and test uuid" do
      a = Mittsu::BufferGeometry.new
      b = Mittsu::BufferGeometry.new
      b.uuid.should_not eq(a.uuid)
    end
  end
end 
