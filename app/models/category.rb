class Category < ActiveRecord::Base
  attr_accessible :activated, :description, :icon, :name, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged

end
