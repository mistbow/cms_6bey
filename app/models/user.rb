#encoding : utf-8
class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  has_secure_password
  rails_admin do
    label_plural '用户管理'
  end
end
