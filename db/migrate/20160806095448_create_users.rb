class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.integer :admin_level
      t.date :date_of_bith
      t.text :image
      t.boolean :accept_comms
      t.boolean :accept_proms
      t.string :mobile_tel_number
      t.boolean :accept_texts
      t.string :other_tel_number
      t.string :post_code
      t.string :house_flat_name_number
      t.string :street_address
      t.string :locality
      t.string :city
      t.timestamp :last_visit_date
      t.integer :total_visits
      t.date :membership_expiry_date
      t.integer :membership_type_id
      t.text :profile

      t.timestamps
    end
  end
end
