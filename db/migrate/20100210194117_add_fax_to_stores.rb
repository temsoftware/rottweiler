class AddFaxToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :fax, :string
  end

  def self.down
    remove_column :stores, :fax
  end
end

