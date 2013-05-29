class UtTestImpl < ActiveRecord::Base
    self.table_name = 'ut_test_impl'
    self.primary_key = :uti_id

    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
    belongs_to :ut_lib_dyn_query, :class_name => 'UtLibDynQuery', :foreign_key => :lib_dyn_query_id    
    has_many :ut_validations, :class_name => 'UtValidation', :foreign_key => :uti_id    
    has_many :ut_test_impl_arguments, :class_name => 'UtTestImplArgument', :foreign_key => :uti_id    
    has_many :ut_test_impl_val_results, :class_name => 'UtTestImplValResult', :foreign_key => :uti_id    
    has_many :ut_test_impl_arg_results, :class_name => 'UtTestImplArgResult', :foreign_key => :uti_id    
    has_many :ut_test_impl_results, :class_name => 'UtTestImplResult', :foreign_key => :uti_id    
    has_many :ut_test_coverage_stats, :class_name => 'UtTestCoverageStat', :foreign_key => :uti_id    
end
