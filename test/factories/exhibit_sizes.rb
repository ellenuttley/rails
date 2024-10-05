FactoryBot.define do
  factory :exhibit_size do
    size1 { 10 }
    size2 { 8 }
    capacity { 4 }
    association :animal
  end
end
