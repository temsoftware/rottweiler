class TypeInsurance < ActiveRecord::Base
  named_scope :find_insurance, lambda { |var| {:limit => var}}
end

