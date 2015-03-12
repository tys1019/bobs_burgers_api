class Burger < ActiveRecord::Base
  validates :name, presence: true
end
