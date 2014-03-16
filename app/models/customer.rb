class Customer < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders
  validates :name, uniqueness: true, presence: true
end
