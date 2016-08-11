class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :status
      t.integer :album
      t.integer :poster
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
