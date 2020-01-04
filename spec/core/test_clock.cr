require "../../src/mittsu"
require "spec"

describe Mittsu::Clock do
  context "test initialize" do
    it "when initialize without args" do
      a = Mittsu::Clock.new
      a.auto_start.should  be_true
      a.running.should be_false
      a.elapsed_time.nanoseconds.should eq(0)
    end
  end
  context "test elapsed_time" do
    it "test elapsed_time" do
     
      a = Mittsu::Clock.new
       control_time = Time.measure do
        a.start
        a.stop
      end
      a.elapsed_time.microseconds.should be_close(control_time.microseconds,1)
    end
  end

end
