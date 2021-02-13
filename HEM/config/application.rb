require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module HEM
  class Application < Rails::Application
     config.i18n.default_locale = :ja #ロケールを日本語に変更
     config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s] #config/locale以下のファイルを読み込み
     config.paths.add 'lib', eager_load: true 
     config.autoload_paths += Dir["#{config.root}/lib"]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
