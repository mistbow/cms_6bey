#encoding : utf-8
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(25)
#  last_name       :string(50)
#  email           :string(255)      default(""), not null
#  password_digest :string(128)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  provider        :string(255)
#  uid             :string(255)
#  name            :string(255)
#

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

  has_many :topics,  :dependent => :destroy
  has_many :replies, :dependent => :destroy
  
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

