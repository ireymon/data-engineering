FactoryGirl.define do
  factory :product do
    description { Faker::Commerce.product_name }
    price { rand(10..90) }
    merchant { create(:merchant) }
  end
end