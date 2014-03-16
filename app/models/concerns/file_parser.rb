class FileParser

  def initialize(file_upload)
    @file_upload = file_upload
  end

  def parse
    CSV.foreach(@file_upload.upload_orders.path, col_sep: "\t", headers: true, header_converters: :symbol) do |row|
      parse_row(row)
    end
  end

  private

    def parse_row(row)
      merchant = Merchant.where(name: row[:merchant_name], address: row[:merchant_address]).first_or_create
      product = Product.where(description: row[:item_description], price: row[:item_price].to_f, merchant: merchant).first_or_create
      customer = Customer.where(name: row[:purchaser_name]).first_or_create
      order = Order.create(file_upload: @file_upload, quantity: row[:purchase_count].to_i, customer: customer, product: product)      
    end

end