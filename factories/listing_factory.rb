FactoryGirl.define do
		factory :listing do
			name { Faker::Lorem.words(3) }
			content { Faker::Lorem.paragraph }
			association :section, factory: :section
		end
end
