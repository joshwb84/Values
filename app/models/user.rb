class User < ActiveRecord::Base
has_secure_password


validates :name, presence: true
validates :email, presence: true
validates :password, presence: true
validates :terms_of_service, acceptance: true
end
