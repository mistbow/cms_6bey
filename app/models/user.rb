class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  has_secure_password
end
