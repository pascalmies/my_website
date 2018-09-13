class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
