#encoding : utf-8
class Category < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => true
  has_many :tags, :dependent => :destroy
  rails_admin do
    label_plural '大类管理'
  end
end
