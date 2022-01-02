FactoryBot.define do
  factory :machine do
    sequence(:location) {|l| "Default Location #{l}"}
    association :owner, factory: :owner

    factory :machine_with_snacks do
      transient do
        snack_count {2}
      end
      after(:create) do |machine, evaluator|
        evaluator.snack_count.times do
          snack = create(:snack)
          machine_snack = create(:machine_snack, machine: machine, snack: snack)
        end
      end
    end
  end
end
