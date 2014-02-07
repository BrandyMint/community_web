# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discount_feed do
    discount nil
    city nil
    published false
  end
end
