module TtcRailsBase
  class Engine < ::Rails::Engine

    require 'slim'
    require 'jquery/rails'

    module TtcRailsBase
      class Application < Rails::Application

       config.generators do |g|
          g.template_engine :slim
        end

      end
    end

    config.autoload_paths << File.expand_path('../../', __FILE__)
  end
end

