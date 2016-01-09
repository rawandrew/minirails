module Filters

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def before_action(method)
      before_actions << method
    end

    def before_actions
      @before_actions ||= []
    end
  end

  def process(action_name)
    self.class.before_actions.each { |action| send action}
    super
  end

end