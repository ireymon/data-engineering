FactoryGirl.define do
  factory :order do
    quantity { rand(1..10) }
    customer { create(:customer) }
    product { create(:product) }
    file_upload { create(:file_upload) }
  end
end