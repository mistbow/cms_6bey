#encoding : utf-8
class User < ActiveRecord::Base
  has_secure_password
  rails_admin do
    label_plural '用户管理'
  end
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
  validates_uniqueness_of :email
  def self.create_with_omniauth auth
    user = User.new
    user.provider = auth['provider']
    user.uid = auth['uid']
    user.name = auth['info']['name']
    user.first_name = auth['info']['name']
    user.save(validate: false)
    user
  end
end

