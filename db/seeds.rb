require "#{Rails.root}/db/seed_helper.rb"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def category_with_sections_and_listings(user_email)
  message "Categories, Sections, Listings"
  category = FactoryGirl.create(:category)
  if category.persisted?
    success "Category: #{category.to_s} created"
    4.times { section_with_listings(user_email, category) }
  else
    failure "Category: #{category.to_s} failed to create"
  end
end

def section_with_listings(user_email, category)
  section = FactoryGirl.create(:section, category: category)
  if section.persisted?
    success "Section: #{section.to_s} created"
    5.times { listing(user_email, section) }
  else
    failure "Section: #{section.to_s} failed to create"
  end
end

def listing(user_email, section)
  listing = FactoryGirl.create(:listing, section: section, user: User.where(email: user_email).first)
  if listing.persisted?
    success "Listing: #{listing.to_s} created"
  else
    failure "Listing: #{listing.to_s} failed to create"
  end
end

def roles
  message "Roles"
  Role.enumeration.each do |role|
    unless Role.exists?(name: role)
      role = Role.create(name: role)
      if role.persisted?
        success "#{role.to_s} created"
      else
        failure "#{role.to_s} failed to create"
      end
    else
      success "#{role.to_s} already exists"
    end
  end
end

def users
  message "Users"
  user_role = Role.where(name: 'user').first
  user = User.where(email: 'user@gatech.edu').first
  unless user.nil?
    user = FactoryGirl.create(:user, email: 'user@gatech.edu', password: 'password' )
    user.role = user_role
    user.confirm!
    if user.save
      success "User created successfully with email #{user.email} and password 'password'"
    else
      failure "User failed to create"
    end
  else
    success "User already exists"
  end

  admin_role = Role.where(name: 'admin').first
  admin = User.where(email: 'admin@gatech.edu').first
  unless admin.nil?
    admin = FactoryGirl.create(:user, email: 'admin@gatech.edu', password: 'password' )
    admin.role = admin_role
    admin.confirm!
    if admin.save
      success "Admin created successfully with email #{user.email} and password 'password'"
    else
      failure "Admin failed to create"
    end
  else
    success "Admin already exists"
  end

end
roles
users
categories_with_sections_and_listings('admin@gatech.edu')

