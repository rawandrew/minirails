require "./app/controllers/application_controller"

module MiniRails
  class Application
    def call(env)
      request = Rack::Request.new(env)
      response = Rack::Response.new

      controller_name, action_name = route(request.path_info)
      controller_class = load_controller_class(controller_name)
      response.finish
    end

    def route(path)
      _, controller, action = path.split('/')
      [controller || 'home', action || 'index' ]
    end

    def load_controller_class(controller_name)
      require "./app/controllers/#{controller_name}_controller"
      Object.const_get(controller_name.capitalize + "Controller")
    end

  end
end