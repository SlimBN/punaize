class Board < ActiveRecord::Base
  attr_accessible :cover_id, :description, :name, :slug, :user_id
end
