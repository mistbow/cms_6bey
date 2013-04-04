# == Schema Information
#
# Table name: tags
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

#encoding : utf-8
class Tag < ActiveRecord::Base
  attr_accessible :name, :category_id
  belongs_to :category
  has_many :deals, :dependent => :destroy
  rails_admin do
    label_plural '标签管理'
  end
end
