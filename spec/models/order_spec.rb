require 'spec_helper'

describe Order do

  before(:each) do
    @order = create(:order)
  end

  it "should be valid with valid attributes" do
    @order.should be_valid
  end

  it "should not be valid without a quantity" do
    @order.attributes = { quantity: nil }
    @order.should_not be_valid
    @order.errors[:quantity].should include("is not a number")
  end

  it "should not be valid without a valid quantity" do
    @order.attributes = { quantity: 0 }
    @order.should_not be_valid
    @order.errors[:quantity].should include("must be greater than 0")
  end

  it "should not be valid without a customer" do
    @order.attributes = { customer: nil }
    @order.should_not be_valid
    @order.errors[:customer].should include("can't be blank")
  end

  it "should not be valid without a product" do
    @order.attributes = { product: nil }
    @order.should_not be_valid
    @order.errors[:product].should include("can't be blank")
  end
end