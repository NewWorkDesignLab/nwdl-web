require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nwdl
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Use same secret_key base in dev as in prod (needed to replace spina images cross-environment,
    # because we only achieve same blobs if secret_key_base is the same)
    if Rails.env.development? || Rails.env.test?
      key_file = Rails.root.join("tmp/development_secret.txt")
      FileUtils.mkdir_p(key_file.dirname) if !File.exist?(key_file)
      File.binwrite(key_file, credentials.secret_key_base)
    end
  end
end
