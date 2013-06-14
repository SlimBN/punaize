class Pun < ActiveRecord::Base
  	attr_accessible :board_id, :category_id, :currency_id, :deleted, :description, :image, :link, :original_board_id, :original_punaise_id, :original_user_id, :price, :slug, :title, :user_id, :tag_list

  	mount_uploader :image, ImageUploader

    belongs_to :user

  	extend FriendlyId
  	friendly_id :description, use: :slugged


  	has_and_belongs_to_many :tags


  	serialize :tag_list
  	before_save :generate_taglist
  	after_commit :process_tags

	private
  	def generate_taglist
    	self.tag_list = self.description.scan(/\B#\w*[a-zA-Z]+\w*/).flatten
  	end
  	def process_tags
    	TAG_PROCESSOR.push(:pun_id => self.id)
  	end


end
