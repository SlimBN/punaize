class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatar, :country_id, :is_admin, :is_moderator, :slug, :state_id, :username

  validates_uniqueness_of :username, :email
  #validates :email, :email_format => true

  mount_uploader :avatar, AvatarUploader

  extend FriendlyId
  friendly_id :username, use: :slugged

  has_many :blogs
  has_many :puns
  has_many :comments

  has_many :followeds, :class_name => "Following",
                       :foreign_key => "follower_id"
  has_many :follows, :through => :followeds, 
                     :source => :user

  has_many :followings
  has_many :followers, :through => :followings

  has_many :likeds, :class_name => "Liking",
                       :foreign_key => "liker_id"
  has_many :likes, :through => :likeds, 
                     :source => :pun

  has_many :likings

  belongs_to :likings
  
end
