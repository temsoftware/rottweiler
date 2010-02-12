class AddTypeToInsuranceBusiness < ActiveRecord::Migration
  def self.up
     add_column :insurance_businesses, :type, :integer
  end

  def self.down
     remove_column :insurance_businesses, :type
  end
end

