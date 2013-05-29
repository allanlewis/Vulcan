class UtTestArgument < ActiveRecord::Base

    self.primary_key = :arg_id

    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
    has_many :ut_test_impl_arguments, :class_name => 'UtTestImplArgument', :foreign_key => :arg_id    
    has_many :ut_test_impl_arg_results, :class_name => 'UtTestImplArgResult', :foreign_key => :arg_id    
end
