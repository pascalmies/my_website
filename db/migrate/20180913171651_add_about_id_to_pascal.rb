class AddAboutIdToPascal < ActiveRecord::Migration[5.2]
  def change
    add_reference :pascals, :about, foreign_key: true
  end
end
