class CreateInsurances < ActiveRecord::Migration
  def self.up
    create_table :insurances do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :insurances
  end
end

