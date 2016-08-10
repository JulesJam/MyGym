class CreateActivityRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_records do |t|
      t.integer :activity_id
      t.string :type
      t.string :date
      t.string :status
      t.string :user_id

      t.timestamps
    end
  end
end
