class Comment < ActiveRecord::Base
  attr_accessible :content, :pun_id, :user_id

  belongs_to :user
  belongs_to :pun
end
