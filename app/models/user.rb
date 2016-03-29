class User < ActiveRecord::Base
has_secure_password
has_many :choices
has_many :values, :through => :choices
accepts_nested_attributes_for :choices

validates :name, presence: true
validates :email, presence: true
validates :password, presence: true
validates :terms_of_service, acceptance: true
end
