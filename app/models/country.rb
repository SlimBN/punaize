class Country < ActiveRecord::Base
  attr_accessible :continent_id, :flag, :name, :slug

  has_many :users
end
