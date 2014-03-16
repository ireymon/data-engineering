require "csv"
class FileUpload < ActiveRecord::Base
  belongs_to :user, foreign_key: "created_by"
  has_many :orders, dependent: :destroy
  has_attached_file :upload_orders
  validates :upload_orders, attachment_presence: true
  validates_attachment_file_name :upload_orders, :matches => [/tab$/]
  before_save :set_name
  after_save :parse

  private

    def parse
      FileParser.new(self).parse
      update_total
    end

    def set_name
      self.name = upload_orders.original_filename
    end

    def update_total
      self.update_columns(total: self.orders.includes(:product).sum('orders.quantity * products.price'))
    end

end
