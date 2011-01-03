class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name,    :null => false
      t.string :login,   :null => false
      t.string :pass,    :null => false
      t.boolean :active, :null => false, :default => true
      t.references :profile

      t.timestamps
    end

  end

  def self.down
    drop_table :users
  end
end
