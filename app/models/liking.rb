class Liking < ActiveRecord::Base
  attr_accessible :liker_id, :pun_id

  belongs_to :pun
  belongs_to :liker, :class_name => "User"
end
