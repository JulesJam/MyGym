class ChangeTable < ActiveRecord::Migration[5.0]
  def change

    change_table :users do |t|
      t.rename :date_of_bith, :date_of_birth
    end

  end
end
