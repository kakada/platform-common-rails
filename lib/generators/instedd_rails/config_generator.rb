module InsteddRails
  module Generators
    class ConfigGenerator < ::Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc "Copy configuration files to your application."

      def copy_initializer
        template "instedd_rails_config.rb", "config/initializers/instedd_rails_config.rb"
      end
    end
  end
end
