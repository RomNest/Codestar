require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Codestar
  class Application < Rails::Application

    config.active_record.raise_in_transactional_callbacks = true
    
    I18n.available_locales = [:en, :ua]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'views', '*', '*.yml').to_s]
    config.i18n.default_locale = :en

  end
end
