class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :total_likes
      t.string :total_comments
      t.string :image
      t.string :caption
      t.string :location

      t.timestamps
    end
  end
end
