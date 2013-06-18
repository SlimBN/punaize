class Blog < ActiveRecord::Base
  attr_accessible :blog_category_id, :content, :preview, :slug, :title, :user_id



  mount_uploader :preview, PreviewUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

end
