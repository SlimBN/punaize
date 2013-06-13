class Comment < ActiveRecord::Base
  attr_accessible :content, :pun_id, :user_id
end
