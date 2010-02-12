class CreateInsuranceBusinesses < ActiveRecord::Migration
  def self.up
    create_table :insurance_businesses do |t|
      t.string :name
      t.text   :description
      t.string :img_titulo
      t.string :span_name_id
      t.references :insurance
      t.timestamps
    end
  end

  def self.down
    drop_table :insurance_businesses
  end
end

