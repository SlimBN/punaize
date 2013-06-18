class Currency < ActiveRecord::Base
  attr_accessible :enabled, :name, :symbol

  has_many :puns
end
