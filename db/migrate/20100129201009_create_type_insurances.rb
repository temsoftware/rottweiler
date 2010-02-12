class CreateTypeInsurances < ActiveRecord::Migration
  def self.up
    create_table :type_insurances do |t|
      t.string :name
      t.text   :description
      t.string :url_img
      t.timestamps
    end
  end

  def self.down
    drop_table :type_insurances
  end
end

