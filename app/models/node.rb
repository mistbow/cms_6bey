class Node < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true
  validates_uniqueness_of :name
  has_many :topics, :dependent => :destroy

end
