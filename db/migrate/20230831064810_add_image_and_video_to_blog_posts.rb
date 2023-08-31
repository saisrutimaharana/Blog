class AddImageAndVideoToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :image, :string
    add_column :blog_posts, :video, :string
  end
end
