require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Dothuytrang
  class Application < Rails::Application
    # Set the secret key base for the application.
    config.secret_key_base = Rails.application.credentials.secret_key_base
    
    # Set eager loading to false for the development and test environments.
    config.eager_load = false if Rails.env.development? || Rails.env.test?

    config.load_defaults 7.0
  end
end
