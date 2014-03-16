require 'spec_helper'

describe FileUpload do
  it { should have_attached_file(:upload_orders) }
  it { should validate_attachment_presence(:upload_orders) }

  before(:all) do
    @file_upload = create(:file_upload)
  end

  after(:all) do
    Order.destroy_all
  end

  it "should be valid with valid attributes" do
    @file_upload.should be_valid
  end

  it "should calculate the total" do
    @file_upload.total.should eq 95.0
  end

  it "Generate customers" do
    Customer.count.should eq 3
  end

  it "Generate merchants" do
    Merchant.count.should eq 3
  end

  it "Generate products" do
    Product.count.should eq 3
  end

  it "Generate orders" do
    @file_upload.orders.count.should eq 4
  end

end