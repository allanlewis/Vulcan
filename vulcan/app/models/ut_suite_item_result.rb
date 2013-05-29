class UtSuiteItemResult < ActiveRecord::Base



    belongs_to :ut_suite_result, :class_name => 'UtSuiteResult', :foreign_key => :utsr_id    
    belongs_to :ut_test_result, :class_name => 'UtTestResult', :foreign_key => :utr_id    
    belongs_to :ut_suite_result, :class_name => 'UtSuiteResult', :foreign_key => :utr_nsid    
end
