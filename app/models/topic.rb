# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  node_id    :integer
#  user_id    :integer
#  read_count :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Topic < ActiveRecord::Base
  attr_accessible :content, :node_id, :read_count, :title, :user_id

  validates :content,:node_id,:title, :presence => true

  belongs_to :user
  belongs_to :node
  has_many :replies, :dependent => :destroy
end
