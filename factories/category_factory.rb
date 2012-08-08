FactoryGirl.define do
		factory :category do
			name {Faker::Lorem.word}
      factory :category_with_sections do
        after(:create) {|instance| create_list(:section, 3, category: instance)}
      end

      factory :category_with_sections_and_listings do
        after(:create) {|instance| create_list(:section_with_listings, 4, category: instance)}
      end
		end
end
