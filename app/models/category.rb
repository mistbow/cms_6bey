#encoding : utf-8
# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => true
  has_many :tags, :dependent => :destroy
  rails_admin do
    label_plural '大类管理'
  end
end
