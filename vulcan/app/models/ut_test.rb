class UtTest < ActiveRecord::Base
    self.table_name = 'ut_test'
    self.primary_key = :ut_id

    has_many :ut_test_arguments, :class_name => 'UtTestArgument', :foreign_key => :ut_id    
    has_many :ut_test_impls, :class_name => 'UtTestImpl', :foreign_key => :ut_id    
    has_many :ut_suite_items, :class_name => 'UtSuiteItem', :foreign_key => :ut_id    
    has_many :ut_test_results, :class_name => 'UtTestResult', :foreign_key => :ut_id    
    has_many :ut_startups, :class_name => 'UtStartup', :foreign_key => :ut_id    
    has_many :ut_teardowns, :class_name => 'UtTeardown', :foreign_key => :ut_id    
end
