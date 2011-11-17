module InsteddRails
  module Generators
    class LayoutGenerator < ::Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc "Copy layout files to your application."

      def copy_initializer
        copy_file "application.html.erb", "app/views/layouts/application.html.erb"
      end
    end
  end
end
