class Category < ActiveRecord::Base
  attr_accessible :activated, :description, :icon, :name, :slug
end
