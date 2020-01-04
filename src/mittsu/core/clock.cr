module Mittsu
  class Clock
    property auto_start : Bool, start_time : Time, old_time : Time, elapsed_time : Time::Span, running : Bool

    def initialize(auto_start = true)
      @auto_start = auto_start
      @elapsed_time = Time::Span::ZERO
      @start_time = Time.utc
      @old_time = @start_time
      @running = false
    end

    def start
      @start_time = Time.utc
      @old_time = @start_time
      @running = true
    end

    def stop
      self.get_elapsed_time
      @running = false
    end

    def get_elapsed_time
      self.get_delta
      @elapsed_time
    end

    def get_delta
      diff = 0
      if @auto_start && ! @running
        self.start
      end
      if @running
        new_time = Time.utc
        diff = new_time - @old_time
        @old_time = new_time
        @elapsed_time += diff
      end
      diff
    end

  end
end
