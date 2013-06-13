class State < ActiveRecord::Base
  attr_accessible :country_id, :name, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged

end
