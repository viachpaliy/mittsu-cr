require "./math/box2"
#require "./math/box3"
#require "./math/color"
#require "./math/color_keywords"
#require "./math/euler"
#require "./math/frustum"
#require "./math/line3"
require "./math/matrix3"
require "./math/matrix4"
#require "./math/plane"
require "./math/quaternion"
#require "./math/ray"
#require "./math/sphere"
#require "./math/spline"
#require "./math/triangle"
require "./math/vector2"
require "./math/vector3"
require "./math/vector4"

module Math

    def self.sign(x)
      return Float::NAN unless x.is_a? Numeric
      return Float::NAN if x.to_f.nan?
      return x.to_f if x.zero?
      return (x < 0) ? -1.0 : (x > 0) ? 1.0 : +x
    end

    def self.clamp(x, a, b)
      ( x < a ) ? a : ( ( x > b ) ? b : x )
    end

    def self.clamp_bottom(x, a)
      x < a ? a : x
    end

    def self.map_linear(x, a1, a2, b1, b2)
      b1 + ( x - a1 ) * ( b2 - b1 ) / ( a2 - a1 )
    end

    def self.smooth_step(x, min, max)
  		return 0.0 if x <= min
  		return 1.0 if x >= max

  		x = ( x - min ) / ( max - min )

  	   x * x * ( 3.0 - 2.0 * x )
    end

    def self.smoother_step(x, min, max)
  		return 0.0 if x <= min
  		return 1.0 if x >= max

  		x = ( x - min ) / ( max - min )

  		x * x * x * ( x * ( x * 6.0 - 15.0 ) + 10.0 )
    end

    def self.random16
      ( 65280 * rand + 255 * rand ) / 65535
    end

    def self.rand_int(low, high)
      self.rand_float( low, high ).floor
    end

    def self.rand_float(low, high)
      low + rand * ( high - low )
    end

    def self.rand_float_spread(range)
      range * ( 0.5 - rand )
    end

    DEGREE_TO_RADIANS_FACTOR = ::Math::PI / 180
    def self.deg_to_rad(degrees)
      degrees * DEGREE_TO_RADIANS_FACTOR
    end

    RADIANS_TO_DEGREES_FACTOR = 180 / ::Math::PI
    def self.rad_to_deg(radians)
      radians * RADIANS_TO_DEGREES_FACTOR
    end

    def self.power_of_two?(value)
      ( value & ( value - 1 ) ) == 0 && value != 0
    end

    def self.next_power_of_two(value)
  		value -= 1
  		value |= value >> 1
  		value |= value >> 2
  		value |= value >> 4
  		value |= value >> 8
  		value |= value >> 16
  		value += 1
    end

end
