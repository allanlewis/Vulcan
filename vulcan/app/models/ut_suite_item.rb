class UtSuiteItem < ActiveRecord::Base



    belongs_to :ut_suite, :class_name => 'UtSuite', :foreign_key => :ut_sid    
    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
    belongs_to :ut_suite, :class_name => 'UtSuite', :foreign_key => :ut_nsid    
end
