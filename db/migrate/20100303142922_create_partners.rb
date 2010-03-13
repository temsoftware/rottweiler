class CreatePartners < ActiveRecord::Migration
  def self.up
    create_table :partners do |t|
      t.string    :name
      t.string    :website
      t.string    :data_file_name
      t.string    :data_content_type
      t.integer   :data_file_size
      t.datetime  :data_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :partners
  end
end

