require 'active_support/configurable'

module Instedd
  module Rails
    def self.configure(&block)
      yield self.config
    end

    # Global settings for Instedd Rails
    def self.config
      @config ||= Instedd::Rails::Configuration.new
    end

    # need a Class for 3.0
    class Configuration 
      include ActiveSupport::Configurable
      config_accessor :application_name
      config_accessor :google_analytics

      def initialize
        self.application_name = ::Rails.application.class.parent_name.titleize
        self.google_analytics = ::Rails.application.class.config.google_analytics
      end
    end

  end
end