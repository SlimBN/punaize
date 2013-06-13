class Pun < ActiveRecord::Base
  attr_accessible :board_id, :category_id, :currency_id, :deleted, :description, :image, :link, :original_board_id, :original_punaise_id, :original_user_id, :price, :slug, :title, :user_id
end
