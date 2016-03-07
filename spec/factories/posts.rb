FactoryGirl.define do
  factory :post do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'ducks.jpg')) }
    caption "My ducks in a row."
  end
end
