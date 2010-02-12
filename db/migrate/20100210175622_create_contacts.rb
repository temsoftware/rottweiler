class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string      :name
      t.string      :email
      t.string      :tel
      t.integer     :news
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end

