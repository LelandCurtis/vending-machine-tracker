FactoryBot.define do
  factory :machine_snack do
    association :snack, factory: :snack
    association :machine, factory: :machine
  end
end
