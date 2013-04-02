class Reply < ActiveRecord::Base
  attr_accessible :content, :topic_id, :user_id

  belongs_to :user
  belongs_to :topic
end
