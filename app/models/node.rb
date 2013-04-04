# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Node < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true
  validates_uniqueness_of :name
  has_many :topics, :dependent => :destroy

end
