class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.text :description
      t.string :location
      t.date :date
      t.time :start_time
      t.time :duration
      t.integer :number_of_places
      t.string :status
      t.boolean :active
      t.string :image
      t.integer :places_taken
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
