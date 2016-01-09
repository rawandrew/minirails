require "mini_rails/filters"
require "mini_rails/rendering"

module ActionController

  class Metal
    attr_accessor :request, :response

    def process(action_name)
      send action_name
    end
  end

  class Base < Metal
    include Filters
    include Rendering
  end
end