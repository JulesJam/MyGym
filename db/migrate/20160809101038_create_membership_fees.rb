class CreateMembershipFees < ActiveRecord::Migration[5.0]
  def change
    create_table :membership_fees do |t|
      t.float :paid_amount
      t.date :paid_date
      t.string :user_id

      t.timestamps
    end
  end
end
