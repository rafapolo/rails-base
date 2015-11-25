module TtcRailsBase
  class Engine < ::Rails::Engine
    isolate_namespace TtcRailsBase

    config.autoload_paths << File.expand_path('../../', __FILE__)

    initializer :ttc_rails_glossary do
	     
    end

  end
end

