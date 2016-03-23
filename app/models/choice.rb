class Choice < ActiveRecord::Base
  belongs_to :user
  belongs_to :value
  
  validates :value, presence: true
  validates :user, presence: true
end
