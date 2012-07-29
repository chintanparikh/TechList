class User < ActiveRecord::Base
  belongs_to :role

  Role.enumeration do |role_name|
    define_method "#{role_name}?" do
      self.role_name.to_s == role_name.to_s
    end
  end
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
