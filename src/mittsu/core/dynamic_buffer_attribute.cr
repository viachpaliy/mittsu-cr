module Mittsu
  class DynamicBufferAttribute < Mittsu::BufferAttribute

    class UpdateRange
      property offset, count
      def initialize(@offset : Int32, @count : Int32)
      end
    end
   
    property update_range : UpdateRange

    def initialize(array : Array(Float64), item_size)
      super
      @update_range = UpdateRange.new(0, -1)
    end

    def clone
      Mittsu::DynamicBufferAttribute.new(self.array.dup, self.item_size)
    end
  end
end
