class User < ActiveRecord::Base
  belongs_to :role
  has_many :listings
  before_save :default_user_role

  Role.enumeration.each do |role_name|
    define_method "#{role_name.to_s}?" do
      self.role.name.to_s == role_name.to_s
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

protected

  def default_user_role
    if role.nil?
      self.role = Role.find_by_name('user')
    end
  end
end
