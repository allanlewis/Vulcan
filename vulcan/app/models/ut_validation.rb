class UtValidation < ActiveRecord::Base

    self.primary_key = :validation_id

    belongs_to :ut_lib_validation, :class_name => 'UtLibValidation', :foreign_key => :lib_validation_id    
    belongs_to :ut_test_impl, :class_name => 'UtTestImpl', :foreign_key => :uti_id    
    has_many :ut_test_impl_val_results, :class_name => 'UtTestImplValResult'    
end
