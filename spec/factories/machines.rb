FactoryBot.define do
  factory :machine do
    sequence(:location) {|l| "Default Location #{l}"}
    association :owner, factory: :owner
  end
end
