class CreateMembershipTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :membership_types do |t|
      t.string :image
      t.string :title
      t.text :description
      t.date :date_valid_from
      t.date :date_valid_to
      t.boolean :active
      t.float :price
      t.integer :age_eligibility_lower
      t.integer :age_eligibility_upper
      t.integer :validity_period

      t.timestamps
    end
  end
end
