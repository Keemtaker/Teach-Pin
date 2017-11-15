class AddPhotoToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :photo, :string
  end
end
