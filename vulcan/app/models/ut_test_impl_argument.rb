class UtTestImplArgument < ActiveRecord::Base



    belongs_to :ut_test_argument, :class_name => 'UtTestArgument', :foreign_key => :arg_id    
    belongs_to :ut_test_impl, :class_name => 'UtTestImpl', :foreign_key => :uti_id    
end
