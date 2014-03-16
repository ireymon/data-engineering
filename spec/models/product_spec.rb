require 'spec_helper'

describe Product do

  before(:each) do
    @product = create(:product)
  end

  it "should not be valid without a description" do
    @product.attributes = { description: nil }
    @product.should_not be_valid
    @product.errors[:description].should include("can't be blank")
  end

  it "should not be valid if not unique" do
    product2 = create(:product)
    product2.description = @product.description
    product2.price = @product.price
    product2.merchant = @product.merchant
    product2.should_not be_valid
    product2.errors[:description].should include("has already been taken")
  end

end