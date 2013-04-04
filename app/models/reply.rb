# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reply < ActiveRecord::Base
  attr_accessible :content, :topic_id, :user_id

  belongs_to :user
  belongs_to :topic
end
