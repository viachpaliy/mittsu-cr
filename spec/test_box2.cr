require "../src/mittsu"
require "spec"

describe Mittsu::Box2 do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Box2.new
      a.min.is_a?(Mittsu::Vector2).should be_true
      a.max.is_a?(Mittsu::Vector2).should be_true
      a.min.x.should eq(Float64::INFINITY)
      a.min[1].should eq(Float64::INFINITY)
      a.max.y.should eq(-Float64::INFINITY)
      a.max[0].should eq(-Float64::INFINITY)      
    end
  end 
  context "test methods " do
    it "test set method" do
      a = Mittsu::Box2.new.set(Mittsu::Vector2.new(1.0,2.0),Mittsu::Vector2.new(3.0,4.0))
      a.min.x.should eq(1.0)
      a.min[1].should eq(2.0)
      a.max[0].should eq(3.0)
      a.max.y.should eq(4.0)
    end
    it "test set_from_points method" do
      a = Mittsu::Box2.new
      a.set_from_points([Mittsu::Vector2.new(0.0,0.0),Mittsu::Vector2.new(1.0,1.0),Mittsu::Vector2.new(2.0,2.0)])
      a.min.x.should eq(0.0)
      a.min[1].should eq(0.0)
      a.max[0].should eq(2.0)
      a.max.y.should eq(2.0)
    end
  end
end
