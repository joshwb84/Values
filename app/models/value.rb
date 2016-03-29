class Value < ActiveRecord::Base
has_many :choices
has_many :users, :through => :choices
validates :name, presence: true
end
