class CreateAffiliates < ActiveRecord::Migration
  def self.up
    create_table :affiliates do |t|
      t.string :name
      t.string :website
      t.timestamps
    end
  end

  def self.down
    drop_table :affiliates
  end
end
