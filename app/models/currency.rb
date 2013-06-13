class Currency < ActiveRecord::Base
  attr_accessible :enabled, :name, :symbol
end
