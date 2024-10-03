FactoryBot.define do
  factory :animal do
    sequence(:name) { |n| "Animal #{n}" }
    dinosaur { false }
    marine { false }
    researched { false }

    trait :researched do
      researched { true }
    end

    trait :dinosaur do
      dinosaur { true }
    end
  end
end