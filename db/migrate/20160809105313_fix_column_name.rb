class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
     rename_column :membership_types, :validty_period, :validity_period
   end
end
