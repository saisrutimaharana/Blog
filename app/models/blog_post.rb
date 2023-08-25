class BlogPost < ApplicationRecord
    has_rich_text :content
    
    belongs_to :user
    validates :title, presence: true
    validates :content, presence: true
    has_one_attached :image
    has_one_attached :thumbnail 

    scope :sorted, -> { order(published_at: :desc, update_at: :desc)}
    scope :draft, -> { where(published_at:nil)}
    scope :published, -> {where("published_at <= ?", Time.current)}
    scope :scheduled, -> {where("published_at > ?", Time.current)}

    def draft
        published_at.nil?
    end
    def published?
        published_at? && published_at <= Time.current
    end
    def scheduled?
        published_at? && published_at > Time.current
    end
end
