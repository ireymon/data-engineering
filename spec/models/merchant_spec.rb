require 'spec_helper'

describe Merchant do

  before(:each) do
    @merchant = create(:merchant)
  end

  it "should not be valid without a name" do
    @merchant.attributes = { name: nil }
    @merchant.should_not be_valid
    @merchant.errors[:name].should include("can't be blank")
  end

  it "should not be valid if not unique" do
    merchant2 = create(:merchant)
    merchant2.name = @merchant.name
    merchant2.should_not be_valid
    merchant2.errors[:name].should include("has already been taken")
  end

end