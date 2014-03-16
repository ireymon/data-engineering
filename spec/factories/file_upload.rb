FactoryGirl.define do
  factory :file_upload do
    name "example_input.tab"
    upload_orders { File.new(Rails.root + 'spec/fixtures/files/example_input.tab') }
  end
end