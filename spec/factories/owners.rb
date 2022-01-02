FactoryBot.define do
  factory :owner do
    sequence(:name) {|n| "Name_#{n}"}
  end
end
