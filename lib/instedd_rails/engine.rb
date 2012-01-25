require File.expand_path("../../../app/helpers/instedd_rails/application_helper", __FILE__)
require File.expand_path("../../../app/helpers/instedd_rails/instedd_app_helper", __FILE__)
require File.expand_path("../../../app/helpers/instedd_rails/mailer_helper", __FILE__)
require File.expand_path("../../../app/helpers/devise_helper", __FILE__)

module InsteddRails
  class Engine < ::Rails::Engine
    initializer "change view paths order to prepend devise views" do |app|
      application_view_path = ActionController::Base.view_paths.to_a.first
      instedd_rails_view_path = ActionController::Base.view_paths.detect do |path|
        path.to_s.include? "instedd-rails"
      end

      ActionController::Base.prepend_view_path instedd_rails_view_path
      ActionController::Base.prepend_view_path application_view_path
      ActionController::Base.view_paths = ActionController::Base.view_paths.uniq.freeze unless Rails::version >= '3.2'
    end

    config.to_prepare do
      ApplicationController.helper InsteddRails::ApplicationHelper
      ApplicationController.helper InsteddRails::InsteddAppHelper
      ApplicationController.helper InsteddRails::MailerHelper
    end
  end
end
