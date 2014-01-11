class User < ActiveRecord::Base
   attr_accessible :login, :password, :password_confirmation
   has_one :client
   easy_roles :roles
  acts_as_authentic do |config|
    #Configuration Options
    config.crypto_provider = Authlogic::CryptoProviders::MD5
    #config.validate_password_field = false if [:ldap].include?(Copaes::Application.config.authorization_method)
  end
end
