require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ArgonV1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.i18n.available_locales = [:en]
    config.i18n.default_locale = :en
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.beginning_of_week = :monday
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
  end
end
