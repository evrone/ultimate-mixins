module Ultimate
  module Mixins
    class Engine < ::Rails::Engine
      isolate_namespace Ultimate::Mixins
    end
  end
end
