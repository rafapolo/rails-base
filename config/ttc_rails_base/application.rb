module TtcRailsBase
  class Application < Rails::Application
    config.generators do |g|
      g.template_engine :slim
    end
  end
end
