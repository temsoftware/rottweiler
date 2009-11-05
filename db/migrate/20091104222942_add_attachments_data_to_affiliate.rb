class AddAttachmentsDataToAffiliate < ActiveRecord::Migration
  def self.up
    add_column :affiliates, :data_file_name, :string
    add_column :affiliates, :data_content_type, :string
    add_column :affiliates, :data_file_size, :integer
    add_column :affiliates, :data_updated_at, :datetime
  end

  def self.down
    remove_column :affiliates, :data_file_name
    remove_column :affiliates, :data_content_type
    remove_column :affiliates, :data_file_size
    remove_column :affiliates, :data_updated_at
  end
end
