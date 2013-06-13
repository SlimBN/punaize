class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatar, :country_id, :is_admin, :is_moderator, :slug, :state_id, :username

  mount_uploader :avatar, AvatarUploader

  extend FriendlyId
  friendly_id :username, use: :slugged

  has_many :blogs
  has_many :puns
  has_many :comments
  
end
