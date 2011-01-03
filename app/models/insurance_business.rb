class InsuranceBusiness < ActiveRecord::Base
    belongs_to :insurance

    
    named_scope :find_by_insurance_name, lambda{ |name| {:conditions => "name LIKE '%#{name}%'", :limit => 1}  }
    named_scope :find_insurance_by_type   , lambda { |type_name| {:joins => :insurance , :conditions => {'insurances.name' => type_name}} }
    named_scope :find_principal_insurance , lambda { |type_name| {:joins => :insurance , :conditions => {'insurances.name' => type_name}} }
end

