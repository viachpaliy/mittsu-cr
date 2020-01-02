require "../../src/mittsu"
require "spec"

describe Mittsu::BufferAttribute do
  context "test BufferAttribute" do
    it "initialize and test lenght" do
      a = Mittsu::BufferAttribute.new([1.0,2.0,3.0], 1)
      a.length.should eq(3)
    end
    it "test copy at" do
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0], 2)
      b = Mittsu::BufferAttribute.new([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0], 3)
      result = a.copy_at 1, b, 2
      a.array[2].should eq(7.0)
      a.array[3].should eq(8.0)
      a.length.should eq(5)
      result.array[2].should eq(7.0)
      result.array[3].should eq(8.0)
    end
    it "test set method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set([1.0, 2.0, 3.0], 2)
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(1.0)
      a.array[3].should eq(2.0)
      a.array[4].should eq(3.0)
      a.array[5].should eq(0.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_x method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set_x 1, 42.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(42.0)
      a.array[4].should eq(0.0)
      a.array[5].should eq(0.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_y method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set_y 1, 42.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(0.0)
      a.array[4].should eq(42.0)
      a.array[5].should eq(0.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_z method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set_z 1, 42.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(0.0)
      a.array[4].should eq(0.0)
      a.array[5].should eq(42.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_xy method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set_xy 1, 42.0, 24.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(42.0)
      a.array[4].should eq(24.0)
      a.array[5].should eq(0.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_xyz method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 3)
      result = a.set_xyz 1, 42.0, 24.0, 12.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(42.0)
      a.array[4].should eq(24.0)
      a.array[5].should eq(12.0)
      a.array[6].should eq(0.0)
      a.array[7].should eq(0.0)
    end
    it "test set_xyzw method" do 
      a = Mittsu::BufferAttribute.new([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 4)
      result = a.set_xyzw 1, 42.0, 24.0, 12.0, 6.0
      a.array[0].should eq(0.0)
      a.array[1].should eq(0.0)
      a.array[2].should eq(0.0)
      a.array[3].should eq(0.0)
      a.array[4].should eq(42.0)
      a.array[5].should eq(24.0)
      a.array[6].should eq(12.0)
      a.array[7].should eq(6.0)
      a.array[8].should eq(0.0)
    end
    it "test clone method" do
      a = Mittsu::BufferAttribute.new([1.0,2.0,3.0,4.0,5.0,6.0],3)
      b = a.clone
      b.array[0].should eq(1.0)
      b.array[1].should eq(2.0)
      b.array[2].should eq(3.0)
      b.array[3].should eq(4.0)
      b.array[4].should eq(5.0)
      b.array[5].should eq(6.0)
      b.item_size.should eq(3)
    end

  end
end
