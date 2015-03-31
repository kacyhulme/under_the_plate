# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    stars 1
    text "MyText"
    user nil
    establishment nil
  end
end
