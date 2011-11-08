require File.expand_path("../../../app/helpers/instedd-rails/application_helper", __FILE__)
require File.expand_path("../../../app/helpers/instedd-rails/instedd_app_helper", __FILE__)
require File.expand_path("../../../app/helpers/instedd-rails/mailer_helper", __FILE__)
require File.expand_path("../../../app/helpers/instedd-rails/devise_helper", __FILE__)

module InsteddRails
  class Engine < ::Rails::Engine
    config.to_prepare do 
      ApplicationController.helper(InsteddRails::ApplicationHelper)
      ApplicationController.helper(InsteddRails::InsteddAppHelper)
      ApplicationController.helper(InsteddRails::MailerHelper)
      ApplicationController.helper(DeviseHelper)
    end
  end
end