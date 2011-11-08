module Instedd
  module Rails
    module Generators
      class ConfigGenerator < Rails::Generators::Base
        source_root File.expand_path("../templates", __FILE__)

        desc "Creates an initializer and copy locale files to your application."

        def copy_initializer
          template "instedd-rails.rb", "config/initializers/instedd_rails_config.rb"
        end
      end
    end
  end
end
