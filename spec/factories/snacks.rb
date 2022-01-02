FactoryBot.define do
  factory :snack do
    sequence(:name) { |n| "Default Snack Name #{n}" }
    sequence(:price) { |n| "#{n}.11".to_f }
  end
end
