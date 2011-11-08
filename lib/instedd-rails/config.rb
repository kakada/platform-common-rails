require 'active_support/configurable'

module Instedd
  module Rails
    def self.configure(&block)
      yield @config ||= Instedd::Rails::Configuration.new
    end

    # Global settings for Instedd Rails
    def self.config
      @config
    end

    # need a Class for 3.0
    class Configuration 
      include ActiveSupport::Configurable
      config_accessor :application_name

      def initialize
        self.application_name = Rails.application.class.parent_name.titleize
      end
    end

  end
end