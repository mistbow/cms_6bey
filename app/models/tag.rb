class Tag < ActiveRecord::Base
  attr_accessible :name, :category_id
  belongs_to :category
  has_many :deals, :dependent => :destroy  
end
