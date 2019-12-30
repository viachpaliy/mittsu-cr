require "../../src/mittsu"
require "spec"

describe Mittsu::Vector2 do
  context "test_initialize" do

    it "when initialize with 2 args" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      a.x.should eq(1.5)
      a.y.should eq(2.3)
    end
 
    it "when initialize with 1 arg" do
      a = Mittsu::Vector2.new(2.1)
      a.x.should eq(2.1)
    end

    it "when initialize without args" do
      a = Mittsu::Vector2.new
      a.x.should eq(0.0)
      a.y.should eq(0.0)
    end

  end 

  context "test set method" do
    it "set x and y " do
      a = Mittsu::Vector2.new
      result = a.set(1.2,2.3)
      a.x.should eq(1.2)
      a.y.should eq(2.3)
      result.x.should eq(1.2)
      result.y.should eq(2.3)
    end 
  end
   
  context "test methods" do
    it "test add method" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      result = a.add(Mittsu::Vector2.new(3.4, 1.2))
      a.x.should eq(1.5 + 3.4)
      a.y.should eq(2.3 + 1.2)
      result.x.should eq(1.5 + 3.4)
      result.y.should eq(2.3 + 1.2)
    end
    it "test add_scalar method" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      result = a.add_scalar(4.1)
      a.x.should eq(1.5 + 4.1)
      a.y.should eq(2.3 + 4.1)
      result.x.should eq(1.5 + 4.1)
      result.y.should eq(2.3 + 4.1)
    end
   it "test add_vectors method" do
     a = Mittsu::Vector2.new(1.0, 1.0)
     result = a.add_vectors(Mittsu::Vector2.new(2.0, 2.0),Mittsu::Vector2.new(3.0, 3.0))
     a.x.should eq(5.0)
     a.y.should eq(5.0)
     result.x.should eq(5.0)
     result.y.should eq(5.0)
   end   
   it "test sub method" do
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.sub(Mittsu::Vector2.new(3.4, 5.6))
     a.x.should eq(1.2 - 3.4)
     a.y.should eq(2.3 - 5.6)
     result.x.should eq(1.2 - 3.4)
     result.y.should eq(2.3 - 5.6)
   end
   it "test sub_scalar method" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      result = a.sub_scalar(4.1)
      a.x.should eq(1.5 - 4.1)
      a.y.should eq(2.3 - 4.1)
      result.x.should eq(1.5 - 4.1)
      result.y.should eq(2.3 - 4.1)
    end 
    it "test sub_vectors method" do
     a = Mittsu::Vector2.new(1.0, 1.0)
     result = a.sub_vectors(Mittsu::Vector2.new(2.0, 2.0),Mittsu::Vector2.new(3.0, 3.0))
     a.x.should eq(-1.0)
     a.y.should eq(-1.0)
     result.x.should eq(-1.0)
     result.y.should eq(-1.0)
   end   
   it "test multiply method" do
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.multiply(Mittsu::Vector2.new(3.4, 5.6))
     a.x.should eq(1.2 * 3.4)
     a.y.should eq(2.3 * 5.6)
     result.x.should eq(1.2 * 3.4)
     result.y.should eq(2.3 * 5.6)
   end
   it "test multiply_scalar method" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      result = a.multiply_scalar(4.1)
      a.x.should eq(1.5 * 4.1)
      a.y.should eq(2.3 * 4.1)
      result.x.should eq(1.5 * 4.1)
      result.y.should eq(2.3 * 4.1)
    end  
    it "test divide method" do
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.divide(Mittsu::Vector2.new(3.4, 5.6))
     a.x.should eq(1.2 / 3.4)
     a.y.should eq(2.3 / 5.6)
     result.x.should eq(1.2 / 3.4)
     result.y.should eq(2.3 / 5.6)
   end
    it "test divide_scalar method" do
      a = Mittsu::Vector2.new(1.5, 2.3)
      result = a.divide_scalar(4.1)
      a.x.should eq(1.5 / 4.1)
      a.y.should eq(2.3 / 4.1)
      result.x.should eq(1.5 / 4.1)
      result.y.should eq(2.3 / 4.1)
    end
    it "test min method" do
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.min(Mittsu::Vector2.new(0.3, 0.6))
     a.x.should eq(0.3)
     a.y.should eq(0.6)
     result.x.should eq(0.3)
     result.y.should eq(0.6)
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.min(Mittsu::Vector2.new(0.3, 3.6))
     a.x.should eq(0.3)
     a.y.should eq(2.3)
     result.x.should eq(0.3)
     result.y.should eq(2.3)
   end 
   it "test max method" do
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.max(Mittsu::Vector2.new(0.3, 0.6))
     a.x.should eq(1.2)
     a.y.should eq(2.3)
     result.x.should eq(1.2)
     result.y.should eq(2.3)
     a = Mittsu::Vector2.new(1.2, 2.3)
     result = a.max(Mittsu::Vector2.new(0.3, 3.6))
     a.x.should eq(1.2)
     a.y.should eq(3.6)
     result.x.should eq(1.2)
     result.y.should eq(3.6)
   end 
   it "test clamp method" do
     a = Mittsu::Vector2.new(1.5, -3.4)
     result = a.clamp(Mittsu::Vector2.new(0.0, -1.0),Mittsu::Vector2.new(1.0, 1.0))
     a.x.should eq(1.0)
     a.y.should eq(-1.0)
     result.x.should eq(1.0)
     result.y.should eq(-1.0)
     a = Mittsu::Vector2.new(-1.2, 1.7)
     result = a.clamp(Mittsu::Vector2.new(0.0, -1.0),Mittsu::Vector2.new(1.0, 1.0))
     a.x.should eq(0.0)
     a.y.should eq(1.0)
     result.x.should eq(0.0)
     result.y.should eq(1.0)
   end 
  end

end




