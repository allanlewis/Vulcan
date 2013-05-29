class UtLibValidation < ActiveRecord::Base

    self.primary_key = :lib_validation_id

    has_many :ut_validations, :class_name => 'UtValidation', :foreign_key => :lib_validation_id    
end
