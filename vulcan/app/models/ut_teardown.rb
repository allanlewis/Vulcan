class UtTeardown < ActiveRecord::Base

    self.primary_key = :teardown_id

    belongs_to :ut_lib_teardown, :class_name => 'UtLibTeardown', :foreign_key => :lib_teardown_id    
    belongs_to :ut_suite, :class_name => 'UtSuite', :foreign_key => :ut_sid    
    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
end
