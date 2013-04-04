# == Schema Information
#
# Table name: deals
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  image_path :string(255)
#  price      :decimal(8, 2)
#  real_path  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tag_id     :integer
#  caption    :text
#

#encoding : utf-8
class Deal < ActiveRecord::Base
  attr_accessible :image_path, :price, :real_path, :title, :caption
  belongs_to :tag
  attr_accessible :tag_id
  rails_admin do
    label_plural '商品管理'
  end
end
