def get_role(role)
  Role.find_by_name(role) || FactoryGirl.create("#{role}_role")
end

FactoryGirl.define do
  factory :user do

    email { Faker::Internet.email }
    password 'password'
    role { get_role(:user) }

    after(:create) do |instance|
      instance.confirm!
    end

    factory :admin do
      role { get_role(:admin) }
    end
  end
end
