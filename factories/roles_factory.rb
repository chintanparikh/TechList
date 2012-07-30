FactoryGirl.define do
  factory :role do
    name :user

    factory :user_role do
      name :user
    end

    factory :admin_role do
      name :admin
    end
  end
end
