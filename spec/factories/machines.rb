FactoryBot.define do
  factory :machine do
    location {"Denver"}
    association :owner, factory: :owner
  end
end
