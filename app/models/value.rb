class Value < ActiveRecord::Base
has_many :choices
validates :name, presence: true
end
