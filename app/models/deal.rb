class Deal < ActiveRecord::Base
  attr_accessible :image_path, :price, :real_path, :title
  belongs_to :tag 
end
