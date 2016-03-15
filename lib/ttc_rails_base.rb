
module TtcRailsBase
  class Engine < ::Rails::Engine

    require 'slim'
    require 'jquery/rails'
    require "extend_string"

    module TtcRailsBase
      class Application < Rails::Application

        # config errbit
        unless Rails.env.development? && ENV['ERRBIT_KEY']
          require 'airbrake'
          Airbrake.configure do |config|
            config.api_key = ENV['ERRBIT_KEY']
            config.host    = 'errbit.tacticaltech.org'
            config.port    = 443
            config.secure  = config.port == 443
            config.environment_name = Rails.env
            # ignore bots
            config.ignore_user_agent << /bot/    # general bots
            config.ignore_user_agent << /spider/ # baidu
            config.ignore_user_agent << /Slurp/  # yahoo
          end
        end

       config.generators do |g|
          g.template_engine :slim
        end

      end
    end

    config.autoload_paths << File.expand_path('../../', __FILE__)
  end
end

