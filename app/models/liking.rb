class Liking < ActiveRecord::Base
  attr_accessible :liker_id, :pun_id

  belongs_to :pun
  belongs_to :user

  # has_many :users
  # has_many :puns
end
