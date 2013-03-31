require 'sass'

module Ultimate
  module Extensions
    module SassScriptFunctions
      def polar(x, y)
        assert_type x, :Number
        assert_type y, :Number

        theta = Sass::Script::Number.new(Math.atan2(y.value, x.value) / Math::PI * 180 + 90)
        r = Sass::Script::Number.new(Math.hypot(x.value, y.value))
        Sass::Script::List.new([theta, r], :comma)
      end

      Sass::Script::Functions.declare :polar, [:x, :y]
    end
  end
end

module Sass::Script::Functions
  include Ultimate::Extensions::SassScriptFunctions
end

class Sass::Script::Functions::EvaluationContext
  include Sass::Script::Functions
end
