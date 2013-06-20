require 'rails/generators'

module IpsWallet
  class ConfigGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    desc "Creates a IpsWallet initializer(config/initializers/ips_wallet.rb)."
    def add_initializer
      template "initializer.rb", "config/initializers/ips_wallet.rb"
    end

    def show_readme
       readme "README"
    end
  end
end
