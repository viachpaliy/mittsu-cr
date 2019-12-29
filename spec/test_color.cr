require "../src/mittsu"
require "spec"

describe Mittsu::Color do
  context "test_initialize" do

    it "when initialize with 3 args" do
      a = Mittsu::Color.new(1.0, 0.2, 0.3)
      a.x.should eq(1.0)
      a.y.should eq(0.2)
      a.z.should eq(0.3)
      a.r.should eq(1.0)
      a.g.should eq(0.2)
      a.b.should eq(0.3)
    end
    it "set hex" do
      a = Mittsu::Color.new
      a.set_hex(0xFF00FF)
      a.x.should eq(1.0)
      a.y.should eq(0.0)
      a.z.should eq(1.0)
      a.r.should eq(1.0)
      a.g.should eq(0.0)
      a.b.should eq(1.0)
    end
     it "test set methods" do
      a = Mittsu::Color.new
      a.set(0xFF00FF)
      a.x.should eq(1.0)
      a.y.should eq(0.0)
      a.z.should eq(1.0)
      a.r.should eq(1.0)
      a.g.should eq(0.0)
      a.b.should eq(1.0)
    end
     it "test set methods with Color" do
      a = Mittsu::Color.new
      b = Mittsu::Color.new(1.0, 0.2, 0.3)
      a.set(b)
      a.x.should eq(1.0)
      a.y.should eq(0.2)
      a.z.should eq(0.3)
      a.r.should eq(1.0)
      a.g.should eq(0.2)
      a.b.should eq(0.3)
    end
    it "test set methods with string" do
      a = Mittsu::Color.new
      a.set("cyan")
      a.x.should eq(0.0)
      a.y.should eq(1.0)
      a.z.should eq(1.0)
      a.r.should eq(0.0)
      a.g.should eq(1.0)
      a.b.should eq(1.0)
    end

  end 
end
