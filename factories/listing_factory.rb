FactoryGirl.define do
		factory :listing do
			name 'Maths textbook'
			content Faker::Lorem.paragraph
			association :section, factory: :section
		end
end