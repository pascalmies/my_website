class AddPostsToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :posts, foreign_key: true
  end
end
