class CreateAboutjrs < ActiveRecord::Migration
  def self.up
    create_table :aboutjrs do |t|
      t.text   :description
      t.timestamps
    end
  end

  def self.down
    drop_table :aboutjrs
  end
end

