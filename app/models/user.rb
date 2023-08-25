class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :blog_posts
  validates :name, presence: true
  validates :gender, presence: true
  validates :dob, presence: true
  validates :avatar, presence: true

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :authentication_keys => [:name]


end
