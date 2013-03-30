#encoding : utf-8
class Deal < ActiveRecord::Base
  attr_accessible :image_path, :price, :real_path, :title
  belongs_to :tag
  attr_accessible :tag_id
  rails_admin do
    label_plural '商品管理'
  end
end
