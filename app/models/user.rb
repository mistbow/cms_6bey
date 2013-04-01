#encoding : utf-8
class User < ActiveRecord::Base
  include Gravtastic
  gravtastic
  
  has_secure_password
  rails_admin do
    label_plural '用户管理'
  end
  
  attr_accessible :email, :password, :password_confirmation, :name

  validates :email, :name, :password, :password_confirmation, :presence => true
  validates_uniqueness_of :email, :name
  
  def self.create_with_omniauth auth
    user = User.new
    user.provider = auth['provider']
    user.uid = auth['uid']
    user.name = auth['info']['name']
    user.email = auth['info']['email']
    user.save(validate: false)
    user
  end
end

