class AddBlogIdToPascal < ActiveRecord::Migration[5.2]
  def change
    add_reference :pascals, :blog, foreign_key: true
  end
end
