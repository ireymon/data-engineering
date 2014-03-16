require 'spec_helper'

describe Customer do

  before(:each) do
    @customer = create(:customer)
  end

  it "should not be valid without a name" do
    @customer.attributes = { name: nil }
    @customer.should_not be_valid
    @customer.errors[:name].should include("can't be blank")
  end

  it "should not be valid if not unique" do
    customer2 = create(:customer)
    customer2.name = @customer.name
    customer2.should_not be_valid
    customer2.errors[:name].should include("has already been taken")
  end

end