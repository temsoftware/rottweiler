class CreateHomeInfos < ActiveRecord::Migration
  def self.up
    create_table :home_infos do |t|
      t.string :name
      t.text :text
      t.timestamps
    end
  end

  def self.down
    drop_table :home_infos
  end
end
