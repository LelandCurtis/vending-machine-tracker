FactoryBot.define do
  factory :owner do
    sequence(:name) {|n| "Default Name #{n}"}
  end
end
