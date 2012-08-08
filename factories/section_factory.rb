FactoryGirl.define do
		factory :section do
			name { Faker::Lorem.word }
			association :category, factory: :category
      
      factory :section_with_listings do
        after(:create) {|instance| create_list(:listing, 10, section: instance) }
      end
		end
end
