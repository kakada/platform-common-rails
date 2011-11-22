begin
  require "devise"
rescue LoadError => ex
  nil
end
require "instedd_rails/version"
require "instedd_rails/engine"
require "instedd_rails/config"
require "instedd_rails/show_exceptions"
require "instedd_rails/routes"
# require "devise_helper"
# require "mailer_helper"

module InsteddRails

end
