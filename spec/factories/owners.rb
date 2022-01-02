FactoryBot.define do
  factory :owner do
    sequence(:name) {|n| "Default Owner Name #{n}"}

    factory :owner_with_machines do

      transient do
        machine_count {2}
      end

      after(:create) do |owner, evaluator|
        create_list(:machine, evaluator.machine_count, owner: owner)
        owner.reload
      end
    end
  end
end
