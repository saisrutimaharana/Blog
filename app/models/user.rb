class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  has_many :blog_posts
  validates :name, presence: true
  validates :gender, presence: true
  validates :dob, presence: true
  validates :avatar, presence: true

 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :authentication_keys => [:name]

  def avatar_url
    if self.avatar.attached?
      rails.application.routes.url_helpers.rails_blob_path(self.avatar, only_path: true)
    else
      nil
    end
  end


end
