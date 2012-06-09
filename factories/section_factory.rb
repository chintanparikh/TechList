FactoryGirl.define do
		factory :section do
			name 'Buy textbooks'
			association :category, factory: :category
		end
end