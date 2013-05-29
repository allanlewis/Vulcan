class UtTestImplValResult < ActiveRecord::Base

    self.primary_key = :utivr_id

    belongs_to :ut_validation, :class_name => 'UtValidation', :foreign_key => :val_id    
    belongs_to :ut_test_impl, :class_name => 'UtTestImpl', :foreign_key => :uti_id    
    belongs_to :ut_test_impl_result, :class_name => 'UtTestImplResult', :foreign_key => :utir_id    
end
