class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  belongs_to :file_upload
  validates :quantity, numericality: { greater_than: 0 }
  validates :customer, presence: true  
  validates :product, presence: true  
  validates :file_upload, presence: true  
end
