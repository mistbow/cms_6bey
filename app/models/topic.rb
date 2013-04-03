class Topic < ActiveRecord::Base
  attr_accessible :content, :node_id, :read_count, :title, :user_id

  validates :content,:node_id,:title, :presence => true

  belongs_to :user
  belongs_to :node
  has_many :replies, :dependent => :destroy
end
