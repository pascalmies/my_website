class CreatePascals < ActiveRecord::Migration[5.2]
  def change
    create_table :pascals do |t|
      t.text :description
      t.string :photo
      t.string :email

      t.timestamps
    end
  end
end
