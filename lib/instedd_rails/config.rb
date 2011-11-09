require 'active_support/configurable'

module InsteddRails
  def self.configure(&block)
    yield self.config
  end

  # Global settings for Instedd Rails
  def self.config
    @config ||= InsteddRails::Configuration.new
  end

  # need a Class for 3.0
  class Configuration 
    include ActiveSupport::Configurable
    config_accessor :application_name
    config_accessor :google_analytics
    config_accessor :version_name

    def initialize
      self.application_name = ::Rails.application.class.parent_name
      self.google_analytics = ::Rails.application.class.config.google_analytics
      self.version_name = ::Rails.application.class.config.version_name
    end
  end

end