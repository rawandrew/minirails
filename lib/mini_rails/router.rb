class Router

  def initialize(&block)
    @routes = {}
    instance_eval(&block)
  end

  def match(routes)
    routes.each_pair do |path, route|
      @routes[path] = route.split('#')
    end
  end

  def route(path)
    @routes[path]
  end

  def all_routes
    @routes
  end

end