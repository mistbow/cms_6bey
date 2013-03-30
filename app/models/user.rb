class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
  validates_uniqueness_of :email
end

