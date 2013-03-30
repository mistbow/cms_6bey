#encoding : utf-8
class User < ActiveRecord::Base
  has_secure_password
  rails_admin do
    label_plural '用户管理'
  end
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
  validates_uniqueness_of :email
end

