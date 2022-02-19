# Permitted locales available for the application
I18n.config.available_locales = [:en, :de]

# Set default locale to something other than :en
I18n.config.default_locale = :de

# Load application custom translations in order to use them in other initializers
# https://stackoverflow.com/questions/15327019/rails-translation-in-initializer
I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
