class UtSuite < ActiveRecord::Base
    self.table_name = 'ut_suite'
    self.primary_key = :ut_sid

    has_many :ut_suite_items, :class_name => 'UtSuiteItem', :foreign_key => :ut_sid    
    has_many :ut_suite_items, :class_name => 'UtSuiteItem'    
    has_many :ut_suite_results, :class_name => 'UtSuiteResult', :foreign_key => :ut_sid    
    has_many :ut_startups, :class_name => 'UtStartup', :foreign_key => :ut_sid    
    has_many :ut_teardowns, :class_name => 'UtTeardown', :foreign_key => :ut_sid    
end
