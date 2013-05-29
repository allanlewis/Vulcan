class UtStartup < ActiveRecord::Base

    self.primary_key = :startup_id

    belongs_to :ut_lib_startup, :class_name => 'UtLibStartup', :foreign_key => :lib_startup_id    
    belongs_to :ut_suite, :class_name => 'UtSuite', :foreign_key => :ut_sid    
    belongs_to :ut_test, :class_name => 'UtTest', :foreign_key => :ut_id    
end
