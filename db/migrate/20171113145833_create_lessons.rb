class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :description
      t.string :location
      t.string :category
      t.integer :price
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
