class Product < ActiveRecord::Base
  belongs_to :merchant
  has_many :orders
  has_many :customers, through: :orders
  validates :merchant, presence: true
  validates :description, presence: true
  validates_uniqueness_of :description, :scope => [:price, :merchant]
  validates :price, numericality: { greater_than_or_equal_to: 0 }  
end